import 'package:demo_news_api/controllers/home_provider.dart';
import 'package:demo_news_api/controllers/news_category_provider.dart';
import 'package:demo_news_api/controllers/news_provider.dart';
import 'package:demo_news_api/view/home_screen.dart';
import 'package:demo_news_api/view/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeScreenProvider()),
        ChangeNotifierProvider(
          create: (context) => NewsCategoryListProvider(),
        ),
        ChangeNotifierProvider(create: (context) => NewsProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splash(),
        routes: {
          '/home': (context) => HomeScreen(),
        },
      ),
    );
  }
}
