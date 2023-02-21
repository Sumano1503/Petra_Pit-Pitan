import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:petra_pit_pitan/screen/admin/detailSepeda.dart';
import 'package:petra_pit_pitan/screen/admin/history.dart';

import '../../theme.dart';

class listSepedaPage extends StatefulWidget {
  const listSepedaPage({super.key});

  @override
  State<listSepedaPage> createState() => _listSepedaPageState();
}

class _listSepedaPageState extends State<listSepedaPage> {
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
                  'L',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                Text(
                  'ist Sepeda',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            automaticallyImplyLeading: false,
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => historyPage()));
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.history,
                              color: Colors.white,
                            ),
                            Text(" History",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: secondarycolor,
                          borderRadius: BorderRadius.circular(23),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showMaterialModalBottomSheet(
                          context: context,
                          builder: (context) => SingleChildScrollView(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom),
                            controller: ModalScrollController.of(context),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  AppBar(
                                    backgroundColor: primarycolor,
                                    title: Text("Form Tambah Sepeda"),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 30),
                                    child: Column(
                                      children: [
                                        InkWell(
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 10),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.image,
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                  "  Gambar Sepeda",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                              color: secondarycolor,
                                              borderRadius:
                                                  BorderRadius.circular(23),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              labelText: "Nama Sepeda",
                                              icon: Icon(Icons.directions_bike),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              labelText: "Warna Sepeda",
                                              icon: Icon(Icons.color_lens),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              labelText: "Merk Sepeda",
                                              icon: Icon(Icons.label),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              labelText: "Ukuran Sepeda",
                                              icon: Icon(Icons.format_size),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              labelText: "Deskripsi Sepeda",
                                              icon: Icon(Icons.description),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 20),
                                          child: InkWell(
                                            onTap: () {},
                                            child: Container(
                                              width: 220,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20, vertical: 10),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.add_box_rounded,
                                                    color: Colors.white,
                                                  ),
                                                  Text(
                                                    "  Tambah Sepeda",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                color: secondarycolor,
                                                borderRadius:
                                                    BorderRadius.circular(23),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.add_box_rounded,
                              color: Colors.white,
                            ),
                            Text(
                              "  Tambah Sepeda",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: secondarycolor,
                          borderRadius: BorderRadius.circular(23),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => detailSepedaPage(),
                          ),
                        );
                      },
                      title: Text("Siskiu D7"),
                      leading: Image.asset("assets/siskiu.jpeg"),
                      subtitle: Text("01"),
                      trailing: InkWell(
                        child: Icon(
                          Icons.indeterminate_check_box_rounded,
                          color: Colors.red,
                        ),
                      ),
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
