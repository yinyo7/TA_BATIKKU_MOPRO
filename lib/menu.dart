import 'package:flutter/material.dart';
import 'megamendung.dart';
import 'parangkusumo.dart';
import 'tujuhrupa.dart';
import 'about.dart';
import 'template.dart';
import 'textstyle.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Batik-Ku",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset(
                "assets/images/MARYA.png",
                width: 125,
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
                      "Jenis Batik",
                      style: titleTextstyle,
                    ),
                    Row(children: [
                      template(
                        imageUrl: ("assets/images/megamendung.jpg"),
                        name: "Batik Megamendung",
                        sub: "Kota Cirebon",
                      ),
                      Spacer(),
                      IconButton(
                          icon: Icon(Icons.navigate_next),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return megamendung();
                            }));
                          })
                    ]),
                    Row(children: [
                      template(
                        imageUrl: ("assets/images/parangkusumo.jpg"),
                        name: "Batik Parangkusumo",
                        sub: "Kota Solo",
                      ),
                      Spacer(),
                      IconButton(
                          icon: Icon(Icons.navigate_next),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return parangkusumo();
                            }));
                          })
                    ]),
                    Row(children: [
                      template(
                        imageUrl: ("assets/images/tujuhrupa.png"),
                        name: "Batik Tujuh Rupa",
                        sub: "Kota Pekalongan",
                      ),
                      Spacer(),
                      IconButton(
                          icon: Icon(Icons.navigate_next),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return tujuhrupa();
                            }));
                          })
                    ]),
                    SizedBox(height: 20),
                    Text(
                      "Tentang",
                      style: titleTextstyle,
                    ),
                    Row(children: [
                      template(
                        imageUrl: ("assets/images/about.png"),
                        name: "Tentang Kami",
                        sub: "Kelompok Moprog B",
                      ),
                      Spacer(),
                      IconButton(
                          icon: Icon(Icons.navigate_next),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return about();
                            }));
                          })
                    ])
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

