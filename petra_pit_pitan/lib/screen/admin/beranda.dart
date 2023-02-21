import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:petra_pit_pitan/screen/admin/detailPeminjaman.dart';
import 'package:petra_pit_pitan/theme.dart';

class berandaPage extends StatefulWidget {
  const berandaPage({super.key});

  @override
  State<berandaPage> createState() => _berandaPageState();
}

class _berandaPageState extends State<berandaPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(98),
          child: AppBar(
            backgroundColor: primarycolor,
            title: Row(
              children: [
                Row(
                  children: [
                    Text(
                      'H',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'alte',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Icon(Icons.add_box_rounded)
              ],
            ),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(
                  text: "Halte 1",
                ),
                Tab(
                  text: "Halte 2",
                ),
                Tab(
                  text: "Dipinjam",
                ),
              ],
            ),
            automaticallyImplyLeading: false,
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => detailPeminjamanPage()));
                    },
                    title: Text("Siskiu D7"),
                    leading: Image.asset("assets/siskiu.jpeg"),
                    subtitle: Text("01"),
                    trailing: Icon(
                      Icons.circle,
                      color: Colors.green,
                    ),
                  );
                },
              ),
            ),
            Center(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => detailPeminjamanPage()));
                    },
                    title: Text("Siskiu D7"),
                    leading: Image.asset("assets/siskiu.jpeg"),
                    subtitle: Text("01"),
                    trailing: Icon(
                      Icons.circle,
                      color: Colors.green,
                    ),
                  );
                },
              ),
            ),
            Center(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => detailPeminjamanPage()));
                    },
                    title: Text("Siskiu D7"),
                    leading: Image.asset("assets/siskiu.jpeg"),
                    subtitle: Text("01"),
                    trailing: Icon(
                      Icons.circle,
                      color: Colors.red,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
