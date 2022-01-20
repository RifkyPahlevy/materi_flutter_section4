import 'package:flutter/material.dart';

class NavigationBarApp extends StatefulWidget {
  @override
  State<NavigationBarApp> createState() => _NavigationBarAppState();
}

class _NavigationBarAppState extends State<NavigationBarApp> {
  late int index;
  List data = [
    Center(
        child: Container(
      alignment: Alignment.center,
      child: Text(
        'Home',
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(200 / 2),
          border: Border.all(width: 10, color: Colors.red)),
    )),
    Center(
        child: Container(
      alignment: Alignment.center,
      child: Text(
        'Shop',
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.circular(200 / 2),
          border: Border.all(width: 10, color: Colors.red)),
    )),
    Center(
        child: Container(
      alignment: Alignment.center,
      child: Text(
        'Person',
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.circular(200 / 2),
          border: Border.all(width: 10, color: Colors.red)),
    )),
  ];
  @override
  void initState() {
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Bar App'),
      ),
      body: data[index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'Keranjang'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
        ],
        backgroundColor: Colors.amber,
      ),
    );
  }
}
