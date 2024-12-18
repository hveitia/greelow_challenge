
import 'package:flutter/material.dart';
import 'package:greelow/modules/home/domain/contact.dart';
import 'package:greelow/modules/home/presenter/widgets/contact_item.dart';

class ContactList extends StatelessWidget {

  final List<Contact> contacts;
  final ScrollController scrollController;

  const ContactList({super.key, required this.contacts, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        controller: scrollController,
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ContactItem(name: contacts[index].name,);
        },
      ),
    );
  }

}