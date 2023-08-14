import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Shoes extends StatelessWidget {
  bool istapped = false;
  final AssetImage image;
  String text;
  String text2;
  String text3;
  var color;
  Shoes({
    super.key,
    required this.image,
    required this.text,
    required this.text2,
    required this.text3,
  });

  void handleFavorite() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 180,
          width: 180,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: image,
                alignment: Alignment.center,
              )),
          child: InkWell(
              onTap: () {
                istapped = true;
                color:
                istapped ? Colors.red : Colors.white;
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 130, left: 125),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: Icon(
                        Icons.favorite,
                        color: color,
                      ),
                    ),
                  ],
                ),
              )),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
        ),
        Row(
          children: [
            Text(
              text2,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.orange,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              text3,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ],
    );
  }
}
