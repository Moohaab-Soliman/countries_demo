part of 'visited_bloc.dart';

@freezed
class VisitedEvent with _$VisitedEvent {
  const factory VisitedEvent.getLocalData() = GetLocalData;
  const factory VisitedEvent.addDateToVisited({
    required DateTime visitedDate,
    required CountryEntity visitedCountry,
  }) = AddDateToVisited;

  const factory VisitedEvent.removeVisited() = RemoveVisited;
}
