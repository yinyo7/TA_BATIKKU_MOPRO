import 'package:flutter/material.dart';
import 'package:ta/menu.dart';
import 'textstyle.dart';

void main() => runApp(parangkusumo());

class parangkusumo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
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
                    "assets/images/parangkusumo.jpg",
                    width: 300,
                  ),
                  Text(
                    "Batik Parang Kusumo",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                  Text(
                    "Kota Solo",
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
                          "FILOSOFI",
                          style: titleTextstyle,
                        ),
                        Text(
                          "Motif Batik Parang Kusumo Mengandung makna hidup harus dilandasi oleh perjuangan utk mencari keharuman lahir & batin, ibaratnya keharuman bunga (kusuma). Bagi orang Jawa, hidup di masyarakat yang paling utama dicari adalah keharuman pribadinya tanpa meninggalkan norma-norma yg berlaku & sopan santun agar dpt terhindar dari bencana lahir & batin. Walaupun sulit utk direalisasikan, namun umumnya orang Jawa berharap bisa menemukan hidup yg sempurna lahir batin. Apalagi di zaman yg serba terbuka sekarang ini, sungguh sulit utk mencapai ke tingkat hidup seperti yg diharapkan, karena banyak godaan. Di zaman materialistis ini, orang lebih cenderung mencari nama harum dengan cara membeli dengan uang yg dimiliki, bukan dari tingkah laku & pribadi yg baik.",
                          style: titleTextstyle,
                          textAlign: TextAlign.justify,
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
