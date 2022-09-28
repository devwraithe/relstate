import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking/details.dart';
import 'package:hotel_booking/widgets/location.dart';

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
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                offset: const Offset(0.0, 1.0),
                blurRadius: 1.0,
                spreadRadius: 0,
              ),
            ]),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    offset: const Offset(0.0, 5.0),
                    blurRadius: 8.0,
                    spreadRadius: 0.0,
                  ),
                ],
              ),
              padding: const EdgeInsets.fromLTRB(20, 14, 18, 12),
              child: TextFormField(
                strutStyle: StrutStyle.disabled,
                autofocus: false,
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.characters,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  isDense: true,
                  border: InputBorder.none,
                  suffixIcon: SvgPicture.asset(
                    "assets/icons/search.svg",
                    color: Colors.black,
                  ),
                  prefixIconColor: Colors.white,
                  hintText: "Whatchu lookin' for?",
                  hintStyle: textTheme.subtitle2?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[500],
                  ),
                  suffixIconConstraints: const BoxConstraints(
                    minHeight: 26,
                    minWidth: 26,
                  ),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 24,
          ),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Details(),
                  ),
                ),
                child: const Location(),
              ),
              const SizedBox(height: 38),
              const Location(),
              const SizedBox(height: 38),
            ],
          ),
        ),
      ),
    );
  }
}
