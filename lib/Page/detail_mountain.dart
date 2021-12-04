import 'package:flutter/material.dart';

class DetailMountain extends StatelessWidget {
  DetailMountain({Key key, this.title, this.deskripsi, this.url, this.star})
      : super(key: key);

  String title;
  String deskripsi;
  String url;
  int star;

  int get _star => star;

  int getStar() {
    return star;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[300],
        leading: Icon(Icons.home),
        title: Center(
          child: Text(this.title),
        ),
        actions: <Widget>[Icon(Icons.search)],
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 25),
        color: Colors.blue,
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Image(
                image: NetworkImage(this.url),
              ),
              Text(
                this.deskripsi,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.red,
                    child: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
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
                        Icon(Icons.star,
                            size: 12.0,
                            color:
                                this._star == 4 ? Colors.grey : Colors.orange),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
