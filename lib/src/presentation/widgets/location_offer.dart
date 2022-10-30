import 'package:flutter/material.dart';

class LocationOffer extends StatelessWidget {
  final IconData icon;
  final String title;
  const LocationOffer({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 16),
        Text(
          title,
          style: textTheme.bodyText1,
        ),
      ],
    );
  }
}
