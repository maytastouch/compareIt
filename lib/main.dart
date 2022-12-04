import 'package:compareit/custome_theme.dart';
import 'package:compareit/screens/foodPages/cartPage.dart';
import 'package:compareit/screens/foodPages/favorite.dart';
import 'package:compareit/screens/foodPages/mainFoodPage.dart';
import 'package:compareit/screens/foodPages/settingsPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //theme
      theme: CustomTheme.getTheme(),

      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            bottomNavigationBar: Container(
              decoration: const BoxDecoration(
                  color: Colors.grey, boxShadow: CustomTheme.cardShadow),
              child: const TabBar(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  indicatorColor: Colors.transparent,
                  tabs: [
                    Tab(
                        icon: Icon(
                      Icons.home,
                      //color: Colors.black,
                    )),
                    Tab(
                        icon: Icon(
                      Icons.favorite,
                      //color: Colors.black,
                    )),
                    Tab(
                        icon: Icon(
                      Icons.shopping_cart,
                      //color: Colors.black,
                    )),
                    Tab(
                        icon: Icon(
                      Icons.settings,
                      //color: Colors.black,
                    )),
                  ]),
            ),
            body: TabBarView(children: [
              const MainFoodPage(),
              const Settings(),
              const Cart(),
              const Favorite()
            ]),
          )),
    );
  }
}
