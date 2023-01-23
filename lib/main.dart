import 'package:cozy_house/pages/Splash_page.dart';
import 'package:cozy_house/providers/space_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:bwa_cozy/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (content) => SpaceProvider(),
      child: MaterialApp(
        home: SplashPage(),
      ),
    );
  }
}
