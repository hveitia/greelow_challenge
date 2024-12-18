
import 'package:greelow/modules/home/domain/contact.dart';


abstract class IContactsService {
  Future<List<Contact>> getContacts();
}