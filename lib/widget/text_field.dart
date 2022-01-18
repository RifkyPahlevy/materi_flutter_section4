import 'package:flutter/material.dart';

void main() {
  runApp(TextFieldApp());
}

class TextFieldApp extends StatefulWidget {
  @override
  State<TextFieldApp> createState() => _TextFieldAppState();
}

class _TextFieldAppState extends State<TextFieldApp> {
  bool isHidden = true;

  // variable dengan tipe data TextEditingController digunakan untuk menampung nilai inputan
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextFieldApp'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller:
                emailC, // parameter controler untuk mengambil inputannya
            textInputAction: TextInputAction.next,
            autocorrect: false,
            keyboardType: TextInputType
                .emailAddress, //ini widget untuk mengatur default keyboard
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                labelText: "Email",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: passC,
            textInputAction: TextInputAction.done, // agar next textfield
            autocorrect: false,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.vpn_key),
              suffixIcon: IconButton(
                  onPressed: () {
                    if (isHidden == true) {
                      isHidden = false;
                    } else {
                      isHidden = true;
                    }
                    print("Ditekan");
                    setState(() {});
                  },
                  icon: Icon(Icons.remove_red_eye)),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              labelText: "Password",
            ),
            obscureText: isHidden, //ini widget agar input "*******"
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                print(
                    'Login dengan Email (${emailC.text}) dan password (${passC.text})'); // .text untuk mengambil textnya
              },
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                  //untuk menghias tombol
                  primary: Colors.red,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))))
        ],
      ),
    );
  }
}
