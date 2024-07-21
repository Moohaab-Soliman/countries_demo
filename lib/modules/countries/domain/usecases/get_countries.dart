import 'package:countries_demo/core/base_usecase.dart';
import 'package:countries_demo/core/error/failure.dart';

import 'package:countries_demo/modules/countries/domain/entities/country_entity.dart';
import 'package:countries_demo/modules/countries/domain/repositories/countries_repository.dart';
import 'package:dartz/dartz.dart';

class GetCountriesUC extends UseCase<List<CountryEntity>, NoParams> {
  final CountriesRepository countriesRepository;

  GetCountriesUC({required this.countriesRepository});

  @override
  Future<Either<Failure, List<CountryEntity>>> call(NoParams params) async {
    try {
      List<CountryEntity> countries = await countriesRepository.getCountries();
      return Right(countries);
    } catch (e) {
      return Left(ServerFailure(errorCode: e.toString()));
    }
  }
}
