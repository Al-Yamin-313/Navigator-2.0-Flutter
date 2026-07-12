import 'package:flutter/material.dart';
import 'home.dart';
import 'dashboard.dart';
import 'product.dart';

void main() {
  runApp(const MyApp());
}

enum AppScreen {
  home,
  dashboard,
  product,
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AppScreen currentScreen = AppScreen.home;
  String userText = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navigator(
        pages: [
          if (currentScreen == AppScreen.home)
            MaterialPage(
              child: HomePage(
                onDashboard: () {
                  setState(() {
                    currentScreen = AppScreen.dashboard;
                  });
                },
              ),
            ),

          if (currentScreen == AppScreen.dashboard)
            MaterialPage(
              child: DashboardPage(
                onProduct: (text) {
                  setState(() {
                    userText = text;
                    currentScreen = AppScreen.product;
                  });
                },
              ),
            ),

          if (currentScreen == AppScreen.product)
            MaterialPage(
              child: ProductPage(
                text: userText,
                onHome: () {
                  setState(() {
                    currentScreen = AppScreen.home;
                  });
                },
              ),
            ),
        ],
        onPopPage: (route, result) => route.didPop(result),
      ),
    );
  }
}