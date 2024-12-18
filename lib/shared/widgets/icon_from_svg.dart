import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconFromSVG extends StatelessWidget {
  final String icon;
  final double size;
  final Color color;

  const IconFromSVG({
    super.key,
    required this.icon,
    this.color = Colors.white,
    this.size = 24,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: SvgPicture.asset(
        'assets/icons/$icon.svg',
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        semanticsLabel: '',
      ),
    );
  }
}