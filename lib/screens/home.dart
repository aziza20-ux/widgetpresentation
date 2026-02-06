import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('our first grid view'),),
      body: GridView.count(crossAxisCount: 2,
      crossAxisSpacing:2,
      mainAxisSpacing: 2,
      children: [
        Image.asset('assets/1.jpg'),
        Image.asset('assets/2.jpg'),
        Image.asset('assets/3.jpg'),
        Image.asset('assets/4.jpg'),
        Image.asset('assets/5.jpg'),
        Image.asset('assets/6.jpg')
      ],),
    );
  }
}