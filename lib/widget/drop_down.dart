import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  final List data = [
    {'judul': 'pilihan-1', 'data': 1},
    {'judul': 'pilihan-2', 'data': 2}
  ];
  late int dataAwal;
  @override
  Widget build(BuildContext context) {
    dataAwal = data[0]['data'];
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDownApp'),
      ),
      body: Center(
        child: DropdownButton<int>(
            value: dataAwal,
            items: data
                .map((e) => DropdownMenuItem(
                      child: Text('${e['judul']}'),
                      value: e['data'] as int,
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                dataAwal = value!;
              });
            }),
      ),
    );
  }
}
