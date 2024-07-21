import 'package:countries_demo/core/utils/export.dart';
import 'package:countries_demo/core/utils/ui/shared_widgets/empty_widget.dart';
import 'package:countries_demo/core/utils/ui/shared_widgets/loading_widget.dart';

import 'package:countries_demo/modules/countries/domain/entities/country_entity.dart';
import 'package:countries_demo/modules/countries/presentation/bloc/visited_bloc/visited_bloc.dart';

import 'package:countries_demo/modules/countries/presentation/ui/widgets/country_card.dart';
import 'package:countries_demo/modules/countries/presentation/ui/widgets/image_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VisitedScreen extends StatefulWidget {
  const VisitedScreen({super.key});

  @override
  State<VisitedScreen> createState() => _VisitedScreenState();
}

class _VisitedScreenState extends State<VisitedScreen> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<VisitedBloc>(context)
        .add(const VisitedEvent.getLocalData());
    return BlocBuilder<VisitedBloc, VisitedState>(
      builder: (context, state) {
        return Scaffold(
            // bottomNavigationBar: const CustomBottomNavigation(),
            appBar: AppBar(
              title: const Text(
                "Visited Countries",
              ),
            ),
            body: state.when(
                initial: () {
                  return;
                },
                loading: () => const LoadingWidget(),
                loaded: (List<CountryEntity> countries) {
                  return Column(
                    children: [
                      NumOfVisited(visitedCountries: countries),
                      countries.isEmpty
                          ? const Expanded(
                              child: EmptyWidget(
                                text: 'No Vistied Countries',
                                image: Images.visitedIcon,
                              ),
                            )
                          : SizedBox(
                              height: context.height * .7,
                              width: double.infinity,
                              child: ListView.builder(
                                itemCount: countries.length,
                                itemBuilder: (_, int index) {
                                  return Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: CountryCard(
                                      country: countries[index],
                                      isFavouriteVisible: false,
                                      isVisitedVisible: false,
                                      hasDate:
                                          countries[index].visitedDate != null
                                              ? true
                                              : false,
                                      child: ButtonWidget(
                                        icon: Icons.date_range_outlined,
                                        onTap: () async {
                                          selectedDate = await showDatePicker(
                                            context: context,
                                            initialDate:
                                                DateTime(2000), // Refer step 1
                                            firstDate: DateTime(2000),
                                            lastDate: DateTime.now(),
                                          );
                                          setState(() {});

                                          BlocProvider.of<VisitedBloc>(context)
                                              .add(
                                            AddDateToVisited(
                                                visitedCountry:
                                                    countries[index],
                                                visitedDate: selectedDate!),
                                          );
                                        },
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                    ],
                  );
                },
                error: (String error) {
                  return const Center(
                    child: Text('Error'),
                  );
                }));
      },
    );
  }
}

class NumOfVisited extends StatelessWidget {
  const NumOfVisited({
    Key? key,
    required this.visitedCountries,
  }) : super(key: key);

  final List visitedCountries;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      height: 80,
      child: Card(
        child: Center(
          child: Text(
            'Number of Visited Countries : ${visitedCountries.length.toString()} ',
            style: const TextStyle(fontSize: 18, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
