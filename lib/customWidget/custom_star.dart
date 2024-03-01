import 'package:flutter/material.dart';

class StarCustom extends StatelessWidget {
  const StarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(alignment: Alignment.bottomRight,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(Icons.star,color: Colors.white,),
            Icon(Icons.star,color: Colors.white,),
            Icon(Icons.star,color: Colors.white,),
          ]),
      Center(child: Text("index",style: TextStyle(color: Colors.black,fontSize: 25),))]
    );
  }
}