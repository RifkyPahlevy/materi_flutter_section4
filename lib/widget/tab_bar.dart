import 'package:flutter/material.dart';

//jika ingin membuat Tab Bar harus dibungkus dengan widget DefaultTabController di bagian Scaffold
// kalo tidak pakai harus menggunakan tab controller manual membuat variable dengan tipe data TabController
// dirubah dulu menjadi statefull yang with mixin SingleTickerProviderStateMixin
class TabBarApp extends StatefulWidget {
  @override
  State<TabBarApp> createState() => _TabBarAppState();
}

class _TabBarAppState extends State<TabBarApp>
    with SingleTickerProviderStateMixin {
  late TabController tabC = TabController(length: 4, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        backgroundColor: Colors.teal,
        bottom: TabBar(controller: tabC, tabs: [
          Tab(
            icon: Icon(Icons.camera_alt),
          ),
          Tab(
            text: 'CHATS',
          ),
          Tab(
            text: 'STATUS',
          ),
          Tab(
            text: 'CALLS',
          )
        ]),
      ),
      body: TabBarView(controller: tabC, children: [
        Center(child: Text('Camera')),
        Center(child: Text('CHATS')),
        Center(child: Text('STATUS')),
        Center(child: Text('CALLS')),
      ]),
    );
  }
}
