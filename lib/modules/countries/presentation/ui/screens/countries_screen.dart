import 'package:countries_demo/core/utils/ui/shared_widgets/empty_widget.dart';
import 'package:countries_demo/modules/countries/domain/entities/country_entity.dart';
import 'package:countries_demo/modules/countries/presentation/bloc/all_countries_bloc/country_bloc.dart';
import 'package:countries_demo/modules/countries/presentation/bloc/all_countries_bloc/country_event.dart';
import 'package:countries_demo/modules/countries/presentation/bloc/all_countries_bloc/country_state.dart';
import 'package:countries_demo/modules/countries/presentation/ui/widgets/country_card.dart';
import 'package:countries_demo/modules/countries/presentation/ui/widgets/search_box.dart';

import 'package:countries_demo/core/utils/ui/shared_widgets/loading_widget.dart';

import 'package:countries_demo/core/utils/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountriesScreen extends StatelessWidget {
  const CountriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CountryBloc, CountryState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "Countries",
            ),
          ),
          body: state.when(
              initial: () {
                return;
              },
              loading: () => const LoadingWidget(),
              loaded: (List<CountryEntity> countries) {
                return RefreshIndicator(
                  onRefresh: () async {
                    return BlocProvider.of<CountryBloc>(context)
                        .add(const CountryEvent.fetch());
                  },
                  child: countries.isEmpty
                      ? const Center(
                          child: EmptyWidget(
                            text:
                                'No Countries to display\nCheck Internet Connection',
                            image: Images.allCountriesIcon,
                          ),
                        )
                      : ListView(
                          children: <Widget>[
                            searchField(context),
                            SizedBox(
                              height: context.height * .7,
                              width: double.infinity,
                              child: ListView.builder(
                                itemCount: countries.length,
                                itemBuilder: (_, int index) {
                                  CountryEntity country = countries[index];

                                  return Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: CountryCard(country: country));
                                },
                              ),
                            ),
                          ],
                        ),
                );
              },
              error: (String error) {
                return const Center(
                  child: Text('Error'),
                );
              },
              searching: () {
                return;
              },
              searched: (List<CountryEntity> searched) {
                return ListView(
                  children: <Widget>[
                    searchField(context),
                    SizedBox(
                      height: context.height * .7,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: searched.length,
                        itemBuilder: (_, int index) {
                          CountryEntity country = searched[index];
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            child: CountryCard(country: country),
                          );
                        },
                      ),
                    ),
                  ],
                );
              }),
        );
      },
    );
  }

  Widget searchField(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 38,
      margin: const EdgeInsets.all(15.0),
      child: SearchBox(textChanged: (text) {
        BlocProvider.of<CountryBloc>(context).add(Search(searchText: text));
      }),
    );
  }
}
