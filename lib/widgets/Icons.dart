import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  final AssetImage image;
  const MyIcon({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 33),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(image: image, alignment: Alignment.center)),
      ),
    );
  }
}
