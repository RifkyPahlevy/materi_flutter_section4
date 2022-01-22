import 'package:flutter/material.dart';

class BiodataApp extends StatefulWidget {
  @override
  State<BiodataApp> createState() => _BiodataAppState();
}

class _BiodataAppState extends State<BiodataApp> {
  final List<String> pendidikan = ['SD', 'SMP', 'SMA', 'Kuliah'];

  final List daftar = [];

  TextEditingController namaC = TextEditingController();

  TextEditingController emailC = TextEditingController();

  TextEditingController alamatC = TextEditingController();

  TextEditingController keteranganC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String pend = pendidikan[0];
    return Scaffold(
      appBar: AppBar(
        title: Text('Biodata Mahasiswa'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            TextField(
              controller: namaC,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  labelText: 'Nama',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: emailC,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: alamatC,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  labelText: 'Alamat'),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Pendidikan'),
                DropdownButton<String>(
                  items: pendidikan
                      .map((e) => DropdownMenuItem(
                            child: Text(e.toString()),
                            value: e.toString(),
                          ))
                      .toList(),
                  onChanged: (value) {
                    pend = value.toString();
                  },
                )
              ],
            ),
            TextField(
              controller: keteranganC,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  labelText: 'Keterangan'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  daftar.add(namaC.text);
                  daftar.add(emailC.text);
                  daftar.add(alamatC.text);
                  daftar.add(keteranganC.text);
                  daftar.add(pend);
                  for (var item in daftar) {
                    print(item);
                  }
                  setState(() {});
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Reminder'),
                      content: Text('Alhamdulilah Berhasil Daftar'),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(20))),
                    ),
                  );
                },
                child: Text('Daftar')),
            Column(
              children: daftar.map((e) => Text(e.toString())).toList(),
            )
          ],
        ),
      ),
    );
  }
}
