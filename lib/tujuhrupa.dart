import 'package:flutter/material.dart';
import 'package:ta/menu.dart';
import 'textstyle.dart';

void main() => runApp(tujuhrupa());

class tujuhrupa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
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
                    "assets/images/tujuhrupa.png",
                    width: 300,
                  ),
                  Text(
                    "Batik Tujuh Rupa",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                  Text(
                    "Kota Pekalongan",
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
                          "salah satu andalan karena memiliki warna dan motif yang memukau hasil perpaduan kebudayaan lokal dengan etnis Tiongkok (China). Hal ini karena Pekalongan yang berada di wilayah pesisir utara pulau Jawa dulunya menjadi tempat transit para pedagang dari berbagai negara salah satunya yang memberi pengaruh besar adalah China. batik dengan motif nuansa alam. Biasanya mengandung motif tumbuhan atau hewan. Motif ini mengadopsi pada motif tumbuhan yang ada pada keramik dari Tiongkok. Motif tumbuhan tersebut dipadukan dengan ragam binatang seperti kupu-kupu, naga, burung merah dan berbagai jenis burung lainnya. Ragam motif tersebut dipoles dengan warna warni yang cerah yang membuat batik tujuh rupa ini begitu memukau. memiliki makna kefasihan dan kelembutan. Motif tersebut juga menggambarkan kehidupan orang pesisir jawa yang mudah beradaptasi dengan kebudayaan luar.",
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
