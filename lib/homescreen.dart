import 'package:flutter/material.dart';
import 'package:sanket/calculation.dart';

class HomeScreen extends StatefulWidget {
final int length;
  const HomeScreen( {super.key, required this.length,});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(

      body: Column(children: [
        SizedBox(
          height: height * .10,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 100,
            itemBuilder: (context, index) {
              return Container(
                width: 50,
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Colors.yellow, shape: BoxShape.circle),
                child: Center(child: Text("$index")),
              );
            },
          ),
        ),
        Container(
          height: height - (height * .10),
          width: width,
          color: Colors.purple,
          child: SingleChildScrollView(
              child: Column(
                          children: [
              ContainerCal(leng: widget.length),
                          ],
                        )),
        ),
      ]),
    );
  }
}
