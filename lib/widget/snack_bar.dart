import 'package:flutter/material.dart';

void main() {
  runApp(SnackBarApp());
}

class SnackBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBarApp'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                //membuat snackbar harus pake ScaffoldMessenger.of
                SnackBar(
                  content: Text(
                    'Berhasil Menghapus data',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.yellow,
                  action: SnackBarAction(
                      label: "Cancel",
                      onPressed: () {
                        print('Tidak Jadi brou');
                      }),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  margin: EdgeInsets.all(
                      15), //kalo ingin menggunakan margin behavior dirubah jadi floating
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            child: Text('Hapus Data')),
      ),
    );
  }
}
