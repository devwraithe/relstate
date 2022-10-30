import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking/src/core/utilities/iconsax_icons.dart';
import 'package:hotel_booking/src/presentation/views/location_details.dart';
import 'package:hotel_booking/src/presentation/widgets/location.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 22,
              vertical: 28,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  offset: const Offset(0.0, 1.0),
                  blurRadius: 1.0,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.2),
                  width: 1.4,
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    offset: const Offset(0.0, 3.0),
                    blurRadius: 4.0,
                    spreadRadius: 0.0,
                  ),
                ],
              ),
              padding: const EdgeInsets.fromLTRB(10, 8, 20, 8),
              child: TextFormField(
                strutStyle: StrutStyle.disabled,
                autofocus: false,
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.characters,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  isDense: true,
                  border: InputBorder.none,
                  prefixIcon: const Icon(
                    Iconsax.search_normal_1,
                    color: Colors.black,
                    size: 20,
                  ),
                  suffixIcon: const Icon(
                    Iconsax.location,
                    color: Colors.black,
                    size: 20,
                  ),
                  hintText: "Search for beaches, castles e.t.c",
                  hintStyle: textTheme.bodyText1?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  suffixIconConstraints: const BoxConstraints(
                    minHeight: 24,
                    minWidth: 24,
                  ),
                  contentPadding: const EdgeInsets.only(top: 12),
                ),
                style: Theme.of(context).textTheme.subtitle2?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ),
        ),
      ),
      body: SizedBox(
        height: screenSize.height,
        width: screenSize.width,
        child: Stack(
          children: [
            // === the actual content === //
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 19),
                      child: Text(
                        "Top Picks For You",
                        style: textTheme.headline5?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Location(
                      action: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const LocationDetails(),
                          ),
                        );
                      },
                      image:
                          "https://images.unsplash.com/photo-1600047509807-ba8f99d2cdde?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1892&q=80",
                      name: "Manitoba, Canada",
                      info: "Designed By David Penner",
                      price: 200,
                      rating: 4.8,
                    ),
                    const SizedBox(height: 38),
                    Location(
                      action: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const LocationDetails(),
                          ),
                        );
                      },
                      image:
                          "https://images.unsplash.com/photo-1597211833712-5e41faa202ea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
                      name: "Twenty Nine Plains, California",
                      info: "433 Miles Away",
                      price: 1051,
                      rating: 5.0,
                    ),
                    const SizedBox(height: 38),
                    Location(
                      action: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const LocationDetails(),
                          ),
                        );
                      },
                      image:
                          "https://images.unsplash.com/photo-1558036117-15d82a90b9b1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                      name: "Livingston, Montana",
                      info: "794 Miles Away",
                      price: 259,
                      rating: 4.5,
                    ),
                  ],
                ),
              ),
            ),

            // === the map selector === //
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(bottom: 26),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(128, 54),
                  ),
                  onPressed: () {},
                  child: Text(
                    "View Map",
                    style: textTheme.bodyText1?.copyWith(
                      color: Colors.white,
                    ),
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
