import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:petra_pit_pitan/screen/admin/detailNotifikasiPeringatan.dart';

import '../../theme.dart';

class notifikasiPeringatanPage extends StatefulWidget {
  const notifikasiPeringatanPage({super.key});

  @override
  State<notifikasiPeringatanPage> createState() =>
      _notifikasiPeringatanPageState();
}

class _notifikasiPeringatanPageState extends State<notifikasiPeringatanPage> {
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
                  'N',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                Text(
                  'otifikasi Peringatan',
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
                              builder: (context) =>
                                  detailNotifilasiPeringatanPage()));
                    },
                    title: Text("Sepeda 01"),
                    leading: Icon(
                      Icons.warning,
                      color: Colors.yellow,
                      size: 50,
                    ),
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
