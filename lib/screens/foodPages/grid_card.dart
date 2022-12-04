import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  final int index;
  final void Function() onPress;
  const GridCard({Key? key, required this.index, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: index % 2 == 0
          ? const EdgeInsets.only(left: 20)
          : const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: ClipRRect(borderRadius: BorderRadius.circular(35)),
    );
  }
}
