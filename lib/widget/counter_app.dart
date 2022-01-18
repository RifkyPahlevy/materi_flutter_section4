import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int nilai = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CounterApp"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$nilai",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  nilai--;
                  print("dikurang ditekan, nilai = $nilai");
                  setState(() {});
                },
                icon: Icon(Icons.remove),
                label: Text('Dikurang'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  nilai++;
                  print("ditambah ditekan, nilai = $nilai");
                  setState(() {});
                },
                icon: Icon(Icons.add),
                label: Text('Ditambah'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
