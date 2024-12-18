
import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {

  final String name;

  const ContactItem({super.key, required this.name,});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      title: Text(name, style: const TextStyle(fontSize: 15, color: Colors.white),),
      leading: const CircleAvatar(backgroundImage: AssetImage('assets/images/avatar.jpeg'),),
      trailing: const Icon(Icons.more_vert, color: Colors.white,),
    );
  }
}