part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();
}

final class HomeInitial extends HomeState {

  final List<Contact> favList;
  final List<Contact> savedList;

  const HomeInitial({required this.favList, required this.savedList});

  @override
  List<Object> get props => [favList, savedList];
}
