import 'package:flutter/material.dart';
import 'package:zomato/Dining/Dining.dart';
import 'package:zomato/Money/Money.dart';
import 'package:zomato/home/Home_Screen.dart';

class Bt extends StatefulWidget {
  const Bt({super.key});

  @override
  State<Bt> createState() => _BtState();
}

class _BtState extends State<Bt> {
  int indexNum = 0;

  var pages = [HomeScreen(), Dining(), Money()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: pages[indexNum],
        bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.delivery_dining,
                  ),
                  label: "Delivery",
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.lunch_dining_rounded),
                  label: "Dining",
                  backgroundColor: Colors.red),
              BottomNavigationBarItem(
                icon: Icon(Icons.money),
                label: "Money",
                backgroundColor: Colors.green,
              )
            ],
            currentIndex: indexNum,
            onTap: (int index) {
              setState(() {
                indexNum = index;
              });
            }),
      ),
    );
  }
}
