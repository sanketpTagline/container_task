import 'package:flutter/material.dart';

class StarCustom extends StatelessWidget {
  int index;
   StarCustom({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    return  Stack(alignment: Alignment.bottomRight, children: [
      const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(
              Icons.star,
              color: Colors.white,
            ),
            Icon(
              Icons.star,
              color: Colors.white,
            ),
            Icon(
              Icons.star,
              color: Colors.white,
            ),
          ]),
      Center(
          child: Text(
        "$index",
        style: const TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
      ))
    ]);
  }
}
