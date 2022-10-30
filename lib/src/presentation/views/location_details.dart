import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/src/core/utilities/iconsax_icons.dart';
import 'package:hotel_booking/src/presentation/widgets/location_benefit.dart';
import 'package:hotel_booking/src/presentation/widgets/location_offer.dart';
import 'package:hotel_booking/src/presentation/widgets/rating.dart';
import 'package:hotel_booking/src/presentation/widgets/solid_icon.dart';

class LocationDetails extends StatefulWidget {
  const LocationDetails({Key? key}) : super(key: key);
  @override
  State<LocationDetails> createState() => _LocationDetailsState();
}

class _LocationDetailsState extends State<LocationDetails> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // === Location Image === //
            Stack(
              children: [
                CachedNetworkImage(
                  imageUrl:
                      "https://images.unsplash.com/photo-1566665797739-1674de7a421a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
                  width: screenSize.width,
                  height: 300,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SolidIcon(
                          action: () => Navigator.pop(context),
                          icon: Icons.arrow_back,
                        ),
                        SolidIcon(
                          action: () {},
                          icon: Icons.favorite_border,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // === Location Name === //
                  Text(
                    "Private room in Rivendell",
                    style: textTheme.headline4?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  // === Location Data === //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Rating(rating: 5.0),
                      Text(
                        "\u2022",
                        style: textTheme.bodyText1,
                      ),
                      Text(
                        "4 Reviews",
                        style: textTheme.bodyText1,
                      ),
                      Text(
                        "\u2022",
                        style: textTheme.bodyText1,
                      ),
                      Text(
                        "New York, United States",
                        style: textTheme.bodyText1,
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Divider(
                    thickness: 1.4,
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  const SizedBox(height: 12),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Rivendell hosted by James",
                            style: textTheme.headline6?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "2 Guests",
                            style: textTheme.bodyText1,
                          ),
                          Text(
                            "\u2022",
                            style: textTheme.bodyText1,
                          ),
                          Text(
                            "1 Bedroom",
                            style: textTheme.bodyText1,
                          ),
                          Text(
                            "\u2022",
                            style: textTheme.bodyText1,
                          ),
                          Text(
                            "1 Bed",
                            style: textTheme.bodyText1,
                          ),
                          Text(
                            "\u2022",
                            style: textTheme.bodyText1,
                          ),
                          Text(
                            "1 Private Bath",
                            style: textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Divider(
                    thickness: 1.4,
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  const SizedBox(height: 18),
                  Column(
                    children: const [
                      LocationBenefit(
                        icon: Iconsax.check,
                        title: "Self check-in",
                        subtitle: "Check yourself in with the keypad",
                      ),
                      SizedBox(height: 20),
                      LocationBenefit(
                        icon: Iconsax.location,
                        title: "Great location",
                        subtitle: "100% of guests gave a 5.0 rating",
                      ),
                      SizedBox(height: 20),
                      LocationBenefit(
                        icon: Iconsax.calendar,
                        title: "Flexible cancellation",
                        subtitle: "Free cancellation on or before Feb 12th",
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Divider(
                    thickness: 1.4,
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    "What this place offers",
                    style: textTheme.headline6?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 18),
                  const LocationOffer(
                    icon: Iconsax.judge,
                    title: "River view",
                  ),
                  const SizedBox(height: 16),
                  const LocationOffer(
                    icon: Iconsax.judge,
                    title: "Kitchen",
                  ),
                  const SizedBox(height: 16),
                  const LocationOffer(
                    icon: Iconsax.judge,
                    title: "Wifi",
                  ),
                  const SizedBox(height: 16),
                  const LocationOffer(
                    icon: Iconsax.judge,
                    title: "Free Parking",
                  ),
                  const SizedBox(height: 16),
                  const LocationOffer(
                    icon: Iconsax.judge,
                    title: "Air Conditioning",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 18,
        ),
        child: Row(
          children: [
            Text(
              "\$240 Per Night",
              style: textTheme.subtitle2,
            ),
            const SizedBox(width: 32),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Make Reservation",
                  style: textTheme.bodyText1?.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
