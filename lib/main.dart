import 'package:flutter/material.dart';
import 'package:flutter_section_4/widget/bottom_sheet.dart';
import 'package:flutter_section_4/widget/counter_app.dart';
import 'package:flutter_section_4/widget/dialog_app.dart';
import 'package:flutter_section_4/widget/drawer_app.dart';
import 'package:flutter_section_4/widget/drop_down.dart';
import 'package:flutter_section_4/widget/navigation_bar.dart';
import 'package:flutter_section_4/widget/snack_bar.dart';
import 'package:flutter_section_4/widget/tab_bar.dart';
import 'package:flutter_section_4/widget/text_field.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: DrawerApp());
  }
}
