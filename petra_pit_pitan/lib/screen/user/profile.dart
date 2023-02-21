import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:petra_pit_pitan/theme.dart';

import '../admin/detailNotifikasiPeringatan.dart';

class profileUserPage extends StatefulWidget {
  const profileUserPage({super.key});

  @override
  State<profileUserPage> createState() => _profileUserPageState();
}

class _profileUserPageState extends State<profileUserPage> {
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
                  'P',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                Text(
                  'rofile',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            automaticallyImplyLeading: true,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Image.asset("assets/profile.jpeg"),
                title: Text("Sumano Wijaya Ksatria"),
                subtitle: Text("c14190159"),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Notifikasi",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
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
            ],
          ),
        ),
      ),
    );
  }
}
