import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:petra_pit_pitan/screen/admin/detailAkunNonaktif.dart';
import 'package:petra_pit_pitan/screen/admin/detailNotifikasiPeringatan.dart';

import '../../theme.dart';

class AkunNonaktifPage extends StatefulWidget {
  const AkunNonaktifPage({super.key});

  @override
  State<AkunNonaktifPage> createState() => _AkunNonaktifPageState();
}

class _AkunNonaktifPageState extends State<AkunNonaktifPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            backgroundColor: primarycolor,
            title: Row(
              children: [
                Text(
                  'A',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                Text(
                  'kun Nonaktif',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            automaticallyImplyLeading: false,
          ),
        ),
        body: Container(
          child: Center(
            child: Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => detailAkunNonaktifPage()));
                    },
                    title: Text("Sepeda 01"),
                    leading: Image.asset("assets/profile.jpeg"),
                    subtitle: Text("Keluar Dari Area Bersepeda"),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
