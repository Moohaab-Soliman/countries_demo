import 'package:countries_demo/core/utils/export.dart';
import 'package:countries_demo/core/utils/images.dart';
import 'package:countries_demo/core/utils/ui/shared_widgets/empty_widget.dart';
import 'package:countries_demo/core/utils/ui/shared_widgets/loading_widget.dart';
import 'package:countries_demo/modules/countries/domain/entities/country_entity.dart';
import 'package:countries_demo/modules/countries/presentation/bloc/bloc/favourite_bloc.dart';
import 'package:countries_demo/modules/countries/presentation/ui/widgets/country_card.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<FavouriteBloc>(context)
        .add(const FavouriteEvent.getLocalData());
    return BlocBuilder<FavouriteBloc, FavouriteState>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              title: const Center(
                child: Text(
                  "Favourite Countries",
                ),
              ),
            ),
            body: state.when(
                initial: () {
                  return;
                },
                loading: () => const LoadingWidget(),
                loaded: (List<CountryEntity> favouriteCountries) {
                  return Column(
                    children: [
                      favouriteCountries.isEmpty
                          ? const Expanded(
                              child: Center(
                                child: EmptyWidget(
                                  text: 'No Favourite Countries',
                                  image: Images.favouriteIcon,
                                ),
                              ),
                            )
                          : SizedBox(
                              height: context.height * .8,
                              width: double.infinity,
                              child: ListView.builder(
                                itemCount: favouriteCountries.length,
                                itemBuilder: (_, int index) {
                                  return Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: CountryCard(
                                      isFavouriteVisible: false,
                                      isVisitedVisible: false,
                                      country: favouriteCountries[index],
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
