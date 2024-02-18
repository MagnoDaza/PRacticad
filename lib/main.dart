import 'package:prueba_2/pages/sliver_page.dart';

import 'pages/doctor_page.dart';
import "package:prueba_2/theme/colors.dart";
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: DoctorPage(),
    );
  }
}
