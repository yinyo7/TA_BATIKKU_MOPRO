import 'package:flutter/material.dart';
import 'package:ta/menu.dart';
import 'textstyle.dart';

void main() => runApp(megamendung());

class megamendung extends StatelessWidget {
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
                  "assets/images/megamendung.jpg",
                  width: 300,
                ),
                Text(
                  "Batik Megamendung",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                Text(
                  "Kota Cirebon",
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
                        "motif yang ada pada batik tersebut harus terdiri dari tujuh gradasi warna. Sesuai namanya yang berarti langit yang akan turun hujan, tujuh gradasi warna batik megamendung tersebut sesuai dengan tujuh lapisan yang ada di langit. Dalam filosofi batik megamendung, kata “mendung“ diartikan sebagai kesabaran. Jadi, sebagai manusia, hendaknya kita tidak mudah marah, melainkan harus panjang sabar. Bentuk awan mendung pada motif batik megamendung pun tidak boleh sembarangan. Arahnya harus mendatar, tidak boleh vertikal. Harus mendatar karena fungsi awan mendung tersebut adalah melindungi dari cahaya matahari yang panas. Oleh karena itu, esensi Megamendung harus mampu mendinginkan atau mengayomi mereka yang ada di bawah.",
                        style: titleTextstyle,
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
