import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({Key? key, required this.imageurl, required this.name})
      : super(key: key);

  final String imageurl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 20,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(children: [
          Container(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              height: 90,
              width: 90,
              child: Image.asset(
                imageurl,
                fit: BoxFit.cover,
              )),
          Text(
            name,
            style: const TextStyle(color: Colors.blue),
          )
        ]));
  }
}
