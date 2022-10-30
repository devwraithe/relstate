import 'package:flutter/material.dart';

class SolidIcon extends StatelessWidget {
  final IconData icon;
  final Function()? action;
  const SolidIcon({
    Key? key,
    required this.icon,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
        ),
        padding: const EdgeInsets.all(10),
        child: Icon(
          icon,
          size: 22,
          color: Colors.black,
        ),
      ),
    );
  }
}
