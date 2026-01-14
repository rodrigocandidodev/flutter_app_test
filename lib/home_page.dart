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
        title: Text(title),
        actions: [
          CustomSwitch()
        ],
      ),
      body: Container(
        width: double.infinity, // It will get the screen width,
        height: double.infinity, // It will get the screen height,
        child: Column( // It creates a column where the children is aligned one under the other
          mainAxisAlignment: MainAxisAlignment.center, // Align vertically at the center of the screen
          crossAxisAlignment: CrossAxisAlignment.start, // Align horizontally at the start of the screen
          children: [
            Text("Counter: $count"),
            CustomSwitch()
          ],
        ),
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

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      }
    );
  }
}