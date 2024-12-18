import 'package:flutter/material.dart';

import 'tile_button.dart';

class TilesContainer extends StatelessWidget {

  final String title;
  const TilesContainer({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, textAlign:TextAlign.start,  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),),
            const SizedBox(height: 20,),
            const Row(
                children: [
                  Expanded(
                      child: TileButton(
                      icon: 'transfer', text: 'Transferir')),
                  Expanded(
                      child: TileButton(
                      icon: 'pay', text: 'Pagar')),
                ]
            ),
            const Row(
                children: [
                  Expanded(child: TileButton(
                      icon: 'cash_out', text: 'Retirar')),
                  Expanded(child: TileButton(
                      icon: 'cash_in', text: 'Depositar')),
                ]
            )
          ]
      ),
    );
  }
}