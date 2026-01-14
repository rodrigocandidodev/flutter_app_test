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
    return Scaffold(
      appBar: AppBar(
        title: Text(title)
      ),
      body: Container(
        height: 250,
        width: 250,
        color: Colors.amber,
        child: Align( // Use Align to create another single render inside the father container
          alignment: Alignment.center,
          child: Container(
            height: 150,
            width: 150,
            color: Colors.blue
          )
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            count ++;
          });
        }
      ),
    );
  }
}