
import 'package:flutter/material.dart';
import 'package:greelow/shared/widgets/icon_from_svg.dart';

final class TileButton extends StatelessWidget {

  final String icon;
  final String text;

  const TileButton({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xff2A2D32), Color(0xff23262A)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child:  Center(
          child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              direction: Axis.vertical,
              children: [
                IconFromSVG(
                  icon: icon,
                  size: 24,
                ),
                Text(text, style: const TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w600),),
              ]
          ),
        )
      ),
    );
  }
}


