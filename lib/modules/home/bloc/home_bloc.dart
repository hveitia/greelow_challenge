

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greelow/modules/home/contracts/contacts_contract.dart';
import 'package:greelow/modules/home/domain/contact.dart';
import 'package:greelow/shared/configurations/iod.dart';


part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeInitial(favList: [], savedList: [])) {
    on<InitialHomeEvent>(_onInitialHomeEvent);
  }

  IContactsService  contactsService = Ioc.get<IContactsService>();

  void _onInitialHomeEvent(InitialHomeEvent event, Emitter<HomeState> emit) async {

    List<Contact> contactsList = await contactsService.getContacts();
    List<Contact> favList = contactsList.where((element) => element.isFavorite).toList();
    List<Contact> savedList = contactsList.where((element) => !element.isFavorite).toList();


    emit(HomeInitial(favList: favList, savedList: savedList));
  }
}
