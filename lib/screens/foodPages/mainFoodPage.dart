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
  final data = ["1", "2", "3", "4"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //margin: EdgeInsets.only(top: 300),
        child: GridView.builder(
            itemCount: data.length,
            padding: const EdgeInsets.symmetric(vertical: 30),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 30, crossAxisSpacing: 30),
            itemBuilder: (BuildContext context, int index) {
              return GridCard(index: index, onPress: () {});
            }),
      ),
    );
  }
}
