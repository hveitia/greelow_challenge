

import 'package:greelow/modules/home/contracts/contacts_contract.dart';
import 'package:greelow/modules/home/domain/contact.dart';


final class ContactsService implements IContactsService {

  @override
  Future<List<Contact>> getContacts() async {

    // Call to API with DIO o HTTP

    return [
      const Contact(name: 'Juan Ayala', isFavorite: true),
      const Contact(name: 'Luis Jimenez', isFavorite: false),
      const Contact(name: 'Alberto Perez', isFavorite: true),
      const Contact(name: 'Jorge Alvarado', isFavorite: false),
      const Contact(name: 'Mary Ruano', isFavorite: true),
      const Contact(name: 'Valeria Martínez', isFavorite: false),
      const Contact(name: 'Diego Gómez', isFavorite: true),
      const Contact(name: 'Mariana López', isFavorite: false),
      const Contact(name: 'Sebastián Herrera', isFavorite: true),
      const Contact(name: 'Sofía Vargas', isFavorite: false),
      const Contact(name: 'Nicolás Fernández', isFavorite: true),
      const Contact(name: 'Camila Ramírez', isFavorite: false),
      const Contact(name: 'Lucía Pérez', isFavorite: true),
      const Contact(name: 'Andrés Castillo', isFavorite: false),
      const Contact(name: 'Daniela Morales', isFavorite: true),
      const Contact(name: 'Gabriel Rojas', isFavorite: false),
      const Contact(name: 'Laura Jiménez', isFavorite: true),
      const Contact(name: 'Santiago Navarro', isFavorite: false),
    ];
  }

}