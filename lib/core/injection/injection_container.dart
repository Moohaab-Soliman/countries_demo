import 'country_injection.dart';
import 'package:get_it/get_it.dart';

final ic = GetIt.instance;

Future<void> init() async {
  CountryInjection();
}
