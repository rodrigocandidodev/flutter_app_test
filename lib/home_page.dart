import 'package:flutter/material.dart';
import 'package:flutter_app_test/app_controller.dart';

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
  bool isDarkTheme = false;

  HomePageState(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title)
      ),
      body: Center(
        child: Switch(
          value: AppController.instance.isDarkTheme,
          onChanged: (value) {
            AppController.instance.changeTheme();
          }
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