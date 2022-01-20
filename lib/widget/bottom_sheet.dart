import 'package:flutter/material.dart';

class BottomSheetApp extends StatelessWidget {
  const BottomSheetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bottom Sheet App'),
        ),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      isDismissible: false,
                      context: context,
                      builder: (context) {
                        return Container(
                          height: 150,
                          color: Colors.blue[200],
                          child: ListView(
                            children: [
                              ListTile(
                                leading: Icon(Icons.phone),
                                title: Text('Telephone'),
                                onTap: () {
                                  print('Tombol Telepone ditekan');
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.email),
                                title: Text('Email'),
                                onTap: () {
                                  print('Tombol Telepone ditekan');
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.photo),
                                title: Text('Photo'),
                                onTap: () {
                                  print('Tombol Telepone ditekan');
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.photo_library_sharp),
                                title: Text('Galeri'),
                                onTap: () {
                                  print('Tombol Telepone ditekan');
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.cancel),
                                title: Text('Cancel'),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              )
                            ],
                          ),
                        );
                      });
                },
                child: Text('Tombol Bottom Sheet'))));
  }
}
