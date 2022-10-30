import 'package:flutter/material.dart';
import 'package:hotel_booking/src/core/utilities/iconsax_icons.dart';

class Rating extends StatelessWidget {
  final double rating;
  const Rating({
    Key? key,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Iconsax.star1,
          size: 20,
        ),
        const SizedBox(width: 3),
        Text(
          "$rating",
          style: textTheme.bodyText1?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
