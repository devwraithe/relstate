import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotel_booking/home.dart';
import 'package:hotel_booking/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) {
      runApp(
        const Traval(),
      );
    },
  );
}

class Traval extends StatelessWidget {
  const Traval({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Traval',
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      theme: themeData,
      home: const Home(),
    );
  }
}
