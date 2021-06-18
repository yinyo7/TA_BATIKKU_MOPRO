import 'package:flutter/material.dart';
import 'package:ta/menu.dart';
import 'textstyle.dart';
import 'template.dart';

class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Menu();
              }));
            },
            backgroundColor: Colors.brown,
            child: Icon(
              Icons.navigate_before,
              size: 28,
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Image.asset(
                    "assets/images/about.png",
                    width: 200,
                  ),
                  Text(
                    "ABOUT US",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                  Text(
                    "Kelompok Dilon",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(color: whitecolor, borderRadius: BorderRadius.vertical(top: Radius.circular(40))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Anggota Kelompok",
                          style: titleTextstyle,
                        ),
                        template(
                          imageUrl: ("assets/images/foto1.png"),
                          name: "Maulana Muhammad",
                          sub: "065117167",
                        ),
                        template(
                          imageUrl: ("assets/images/foto2.png"),
                          name: "Maria Qibtia",
                          sub: "065118230",
                        ),
                        template(
                          imageUrl: ("assets/images/foto3.png"),
                          name: "Gideon naftali Mandey",
                          sub: "065118198",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
