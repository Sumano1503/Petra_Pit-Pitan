import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:petra_pit_pitan/theme.dart';

class historyUserPage extends StatefulWidget {
  const historyUserPage({super.key});

  @override
  State<historyUserPage> createState() => _historyUserPageState();
}

class _historyUserPageState extends State<historyUserPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            leading: BackButton(
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            backgroundColor: primarycolor,
            title: Row(
              children: [
                Text(
                  'H',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                Text(
                  'istory',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            automaticallyImplyLeading: true,
          ),
        ),
        body: Container(
          child: Center(
            child: Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("Sepeda 01"),
                    leading: Image.asset("assets/siskiu.jpeg"),
                    subtitle: Text("14/02/2023"),
                    trailing: Text("12:00"),
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
