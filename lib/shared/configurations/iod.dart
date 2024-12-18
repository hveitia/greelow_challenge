import 'package:get_it/get_it.dart';
import 'package:greelow/modules/home/contracts/contacts_contract.dart';
import 'package:greelow/modules/home/services/contacts_service.dart';


GetIt ioc = GetIt.instance;

class Ioc {

  static setupIocDependency() {
    ioc.registerLazySingleton<IContactsService>(() => ContactsService());
  }

  static T get<T extends Object>() {
    return ioc<T>();
  }

}