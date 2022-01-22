import 'package:flutter/material.dart';

class DrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DrawerApp'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              color: Colors.blue,
              height: 120,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50 / 2),
                        color: Colors.brown,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://picsum.photos/id/1/200/300')),
                        border: Border.all(width: 3)),
                  ),
                  Text('Rifky Pahlevy')
                ],
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Person'),
                  trailing: Icon(Icons.play_circle_fill_sharp),
                  onTap: () {
                    print('Tombol Ditekan');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Person'),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Person'),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Person'),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Person'),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Person'),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Person'),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Person'),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Person'),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Person'),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Person'),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Person'),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Person'),
                )
              ],
            ))
          ],
        ),
      ),
      body: ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .pop(); // method pop() digunakan untuk kembali ke halaman sebelumnya
          },
          child: Text("<<Back")),
    );
  }
}
