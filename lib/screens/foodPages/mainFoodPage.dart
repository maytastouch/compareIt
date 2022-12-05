import 'package:compareit/components/grid_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../appColors/colors.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  List<String> images = [
    'assets/images/boarding1.png',
    'assets/images/boarding2.png',
    'assets/images/boarding3.png',
    'assets/images/boarding1.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 20, top: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/black.png'),
                    radius: 20,
                  ),
                ],
              ),
            ),

            //Text
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              padding: EdgeInsets.only(right: 190),
              child: const Text(
                'CompareIt',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            //Search bar
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(right: 20, left: 20),
              child: Row(
                children: [
                  Container(
                    width: 350,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                        ),
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 16,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: AppColors.mainColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //gridview
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: <Widget>[
                  Container(
                    //add image
                    child: Card(
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/boarding1.png'),
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.topCenter,
                            ),
                            borderRadius: BorderRadius.circular(60)),
                      ),
                    ),
                  ),
                  GridCard(
                    index: 1,
                    onPress: () {},
                  ),
                  GridCard(
                    index: 2,
                    onPress: () {},
                  ),
                  GridCard(
                    index: 3,
                    onPress: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
