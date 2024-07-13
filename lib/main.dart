import 'package:flutter/material.dart';
import 'package:hyperhire/etc/app_color.dart';

import 'pages/home/home_page.dart';

void main() {
  runApp(const Hyperhire());
}

class Hyperhire extends StatelessWidget {
  const Hyperhire({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hyperhire',
      theme: ThemeData(
        fontFamily: "NotoSans",
        appBarTheme: const AppBarTheme(
            backgroundColor: AppColor.white,
            iconTheme: IconThemeData(color: AppColor.black),
            actionsIconTheme: IconThemeData(color: AppColor.black)),
        useMaterial3: false,
      ),
      home: const HomePage(),
    );
  }
}
