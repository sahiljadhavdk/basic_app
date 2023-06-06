part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.onAdd() = _OnAdd;
  const factory HomeEvent.onSubtract() = _OnSubtract;
}
