import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/src/core/utilities/iconsax_icons.dart';
import 'package:hotel_booking/src/presentation/widgets/rating.dart';

class Location extends StatelessWidget {
  final Function()? action;
  final String image, name, info;
  final int price;
  final double rating;
  const Location({
    Key? key,
    required this.action,
    required this.image,
    required this.name,
    required this.info,
    required this.price,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: action,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // === location image and save button === //
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: CachedNetworkImage(
                    imageUrl: image,
                    width: screenSize.width,
                    height: 340,
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: textTheme.bodyText1?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Rating(rating: rating),
              ],
            ),
            const SizedBox(height: 6), // === location designer === //
            Text(
              info,
              style: textTheme.bodyText1?.copyWith(
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 6),
            // === location pricing === //
            Text.rich(
              TextSpan(
                text: "\$$price",
                style: textTheme.bodyText1?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
                children: [
                  TextSpan(
                    text: " Per Night",
                    style: textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
