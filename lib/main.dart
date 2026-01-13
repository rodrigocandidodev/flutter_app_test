import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget(title: "Flutter app"));
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
      theme: ThemeData(primarySwatch:  Colors.red),
      home: HomePage(title)
    );
  }
}

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