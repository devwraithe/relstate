import 'package:flutter/material.dart';

class LocationBenefit extends StatelessWidget {
  final IconData icon;
  final String title, subtitle;
  const LocationBenefit({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: textTheme.subtitle2,
            ),
            const SizedBox(height: 1),
            Text(
              subtitle,
              style: textTheme.bodyText1?.copyWith(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
