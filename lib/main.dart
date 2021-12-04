import 'package:flutter/material.dart';
import 'Page/detail_mountain.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        "/PageGunungLawu": (context) => DetailMountain(
              title: "Gunung Lawu",
              url:
                  "https://images.pexels.com/photos/371633/pexels-photo-371633.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              deskripsi:
                  "Gunung Lawu terletak di Pulau Jawa, Indonesia, tepatnya di perbatasan Provinsi Jawa Tengah dan Jawa Timur. Gunung Lawu terletak di antara tiga kabupaten yaitu Kabupaten Karanganyar, Jawa Tengah, Kabupaten Ngawi, dan Kabupaten Magetan, Jawa Timur. Status gunung ini adalah gunung api istirahat (diperkirakan terahkir meletus pada tanggal 28 November 1885[3][4]) dan telah lama tidak aktif, terlihat dari rapatnya vegetasi serta puncaknya yang tererosi. Di lerengnya terdapat kepundan kecil yang masih mengeluarkan uap air (fumarol) dan belerang (solfatara). Gunung Lawu mempunyai kawasan hutan Dipterokarp Bukit, hutan Dipterokarp Atas, hutan Montane, dan hutan Ericaceous. Gunung Lawu adalah sumber inspirasi dari nama kereta api Argo Lawu, kereta api eksekutif yang melayani Solo Balapan-Gambir. ",
              star: 5,
            ),
        "/PageGunungKrakatau": (context) => DetailMountain(
              title: "Gunung Krakatau",
              url:
                  "https://images.pexels.com/photos/2919720/pexels-photo-2919720.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
              deskripsi:
                  "Krakatau (atau Rakata) adalah kepulauan vulkanik yang masih aktif dan berada di Kecamatan Punduh Pedada, Kabupaten Lampung Selatan, tepatnya di perairan Selat Sunda, antara Pulau Jawa dan Sumatra.[2] Nama ini juga disematkan pada satu puncak gunung berapi di sana (Gunung Krakatau) yang sirna karena letusan kataklismik pada tanggal 26-27 Agustus 1883. Pada tahun 2019, kawasan yang sekarang merupakan cagar alam ini memiliki empat pulau kecil: Pulau Rakata, Pulau Anak Krakatau, Pulau Sertung, dan Pulau Panjang (Rakata Kecil). Berdasarkan kajian geologi, semua pulau ini berasal dari sistem gunung berapi tunggal Krakatau yang pernah ada di masa lalu. ",
              star: 4,
            )
      },
    ),
  );
}

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[300],
          leading: Icon(Icons.home),
          title: Center(
            child: Text("Tugas 8 Flutter"),
          ),
          actions: <Widget>[Icon(Icons.search)],
        ),
        body: Column(
          children: <Widget>[
            Image(
              image: NetworkImage(
                  "https://images.pexels.com/photos/2919720/pexels-photo-2919720.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            Container(
              color: Colors.blue,
              width: 400.0,
              height: 272.0,
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Card(
                        color: Colors.white,
                        // margin: EdgeInsets.all(5),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(4, 0, 4, 3),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                image: NetworkImage(
                                    "https://images.pexels.com/photos/371633/pexels-photo-371633.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                                width: 158,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Gunung Lawu",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    width: 70,
                                    height: 30,
                                    child: RaisedButton(
                                      child: Text(
                                        "Detail",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, '/PageGunungLawu');
                                      },
                                      color: Colors.orange[300],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.star,
                                          size: 12.0,
                                          color: Colors.orange,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 12.0,
                                          color: Colors.orange,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 12.0,
                                          color: Colors.orange,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 12.0,
                                          color: Colors.orange,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 12.0,
                                          color: Colors.orange,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        // margin: EdgeInsets.all(5),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(4, 0, 4, 3),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                image: NetworkImage(
                                    "https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                                width: 158,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Gunung Krakatau",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    width: 70,
                                    height: 30,
                                    child: RaisedButton(
                                      child: Text(
                                        "Detail",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      color: Colors.orange[300],
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, '/PageGunungKrakatau');
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.star,
                                          size: 12.0,
                                          color: Colors.orange,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 12.0,
                                          color: Colors.orange,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 12.0,
                                          color: Colors.orange,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 12.0,
                                          color: Colors.orange,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 12.0,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
