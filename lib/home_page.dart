import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage(this.title, {super.key});

  @override
  State<HomePage> createState() {
    return HomePageState(title);
  }
}

class HomePageState extends State<HomePage> {
  final String title;
  int count = 0;

  HomePageState(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title),
          GestureDetector(
            child: Text("Counter: $count"),
            onTap: () { 
              setState(() {
                count ++;
              });
            }
          )
        ]
      )
    );
  }
}