import 'package:flutter/material.dart';
import 'package:flutter_section_4/widget/tab_bar.dart';

class NavigationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
// untuk berpindah halaman menggunakan method of() di kelas navigator
//dan method push() ke halaman selanjutnya. dan routenya diisi dengan widget MaterialPageRoute().
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => TabBarApp(),
              ));
            },
            child: Text('Next Page >>>')),
      ),
    );
  }
}
