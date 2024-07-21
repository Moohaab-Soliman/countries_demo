import 'package:countries_demo/core/utils/export.dart';
import 'package:countries_demo/modules/countries/domain/entities/country_entity.dart';
import 'package:countries_demo/modules/countries/presentation/bloc/all_countries_bloc/country_bloc.dart';
import 'package:countries_demo/modules/countries/presentation/bloc/all_countries_bloc/country_event.dart';
import 'package:countries_demo/modules/countries/presentation/ui/widgets/image_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountryCard extends StatelessWidget {
  final CountryEntity country;
  final bool isFavouriteVisible;
  final bool isVisitedVisible;
  final bool hasDate;
  final Widget? child;
  const CountryCard({
    Key? key,
    required this.country,
    this.child,
    this.isFavouriteVisible = true,
    this.hasDate = false,
    this.isVisitedVisible = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    String countryCode() {
      if (country.countryCodeSuffixes.isNotEmpty) {
        return (country.countryCodeRoot +
            country.countryCodeSuffixes.map((suffix) => ' | $suffix').join());
      }
      return "";
    }

    return Card(
      child: ExpansionTile(
        initiallyExpanded: true,
        leading: SizedBox(
            width: context.width * .15,
            height: context.height * .15,
            child: Image.network(
              country.flag,
            )),
        title: Text(
          country.name,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Country Code : ${countryCode()} ",
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
            Text(
              "Currency : ${country.currency} ",
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
            Visibility(
              visible: hasDate,
              child: Text(
                // "Visited Date : ${country.visitedDate ?? ''} ",
                "Visited Date : ${country.visitedDate.toString().split(' ')[0]} ",
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ],
        ),
        children: <Widget>[
          const SizedBox(height: 15.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Divider(
              height: 1.0,
            ),
          ),
          const SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Capital City : ${country.capitalCity}"),
                Row(
                  children: [
                    Visibility(
                      visible: isFavouriteVisible,
                      child: ButtonWidget(
                        icon: Icons.favorite_outline_rounded,
                        onTap: () {
                          BlocProvider.of<CountryBloc>(context)
                              .add(Favourite(country: country));
                        },
                      ),
                    ),
                    const SizedBox(width: 10),
                    Visibility(
                      visible: isVisitedVisible,
                      child: ButtonWidget(
                        icon: Icons.add_location_outlined,
                        onTap: () {
                          BlocProvider.of<CountryBloc>(context)
                              .add(Visited(country: country));
                        },
                      ),
                    ),
                    child ?? const Text(''),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 15.0),
        ],
      ),
    );
  }
}
