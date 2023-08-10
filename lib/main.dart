import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  boxMethod('Box1', Alignment.bottomRight),
                  boxMethod('Box2', Alignment.bottomLeft),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  boxMethod('Box3', Alignment.topRight),
                  boxMethod('Box4', Alignment.topLeft),
                ],
              ),
            ],
          ),
          Center(child: boxMethod('Hello World', Alignment.center, true))
        ],
      ),
    );
  }

  Container boxMethod(String name, Alignment derection,
      [bool boxRadius = false]) {
    return Container(
      decoration: BoxDecoration(
          color: boxRadius ? Colors.lightBlue : Colors.green,
          borderRadius: BorderRadius.circular(boxRadius ? 100 : 0)),
      alignment: derection,
      width: 160,
      height: 160,
      child: Text(
        name,
        style: const TextStyle(fontSize: 24, color: Colors.deepPurple),
      ),
    );
  }
}
