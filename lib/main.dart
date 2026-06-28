import 'package:flutter/material.dart';

import 'features/favorite/views/favorite_page.dart';
import 'features/home/views/home_page.dart';
import 'features/message/views/message_page.dart';
import 'features/profile/views/profile_page.dart';
import 'features/search/views/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: "/",
      routes: {
        "/" : (context) => HomePage(),
        "/search" : (context) => SearchPage(),
        "/favorite" : (context) => FavoritePage(),
        "/message" : (context) => MessagePage(),
        "/profile" : (context) => ProfilePage(),
      },
    );
  }
}
