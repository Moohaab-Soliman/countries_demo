import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable implements Exception {
  final String errorCode;
  final String errorMessage;

  const Failure({
    this.errorCode = '',
    this.errorMessage = '',
  });

  @override
  List<Object?> get props => [
        errorCode,
        errorMessage,
      ];

  @override
  String toString() => errorCode;
}

class ServerFailure extends Failure {
  const ServerFailure({errorCode = ''}) : super(errorCode: errorCode);
}

class CacheFailure extends Failure {
  const CacheFailure({errorCode = ''}) : super(errorCode: errorCode);
}
