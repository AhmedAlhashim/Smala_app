import 'package:flutter/material.dart';
import 'package:samla_app/Global_values.dart';
import 'package:samla_app/screens/Chatting.dart';
import 'package:samla_app/screens/Home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:samla_app/screens/Loading.dart';
import 'package:samla_app/screens/Nutrition.dart';
import 'package:samla_app/screens/Training.dart';
import 'package:samla_app/screens/Notifications.dart';

import 'screens/Community.dart';
import 'screens/Profile.dart';
import 'screens/QRcode.dart';
import 'widgets/CustomAppBar.dart';
import 'widgets/CustomNavigationBar.dart';
import 'widgets/MainButtons.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: primary_color,
      statusBarColor: primary_color,
      statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
      statusBarBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark

      /// navigation bar color
      ));
  runApp(App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _currentIndex = 2;
  final screens = [
    Training(),
    Nutrition(),
    Home(),
    Community(),
    Chatting(),
    Profile(),
    QRcode(),
    Notifications(),
  ];

  void changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
          color: primary_color,
          child: SafeArea(
            child: Scaffold(
              appBar: CustomAppBar(notifyParent: changePage),
              body: screens[_currentIndex],
              bottomNavigationBar: CustomNavigationBar(
                notifyParent: changePage,
                index: _currentIndex,
              ),
            ),
          )),
    );
  }
}
