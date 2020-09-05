import 'package:flutter/material.dart';

class ImgDetail extends StatefulWidget {
  final String _imgUrl;
  final int id;
  ImgDetail(this.id, this._imgUrl);

  @override
  _ImgDetailState createState() => _ImgDetailState();
}

class _ImgDetailState extends State<ImgDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('img'),
        // ),
        backgroundColor: Colors.black,
        body: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('${widget.id + 1}/30'),
                SizedBox(
                  height: 10,
                ),
                Hero(
                  tag: widget._imgUrl,
                  child: Image.network(widget._imgUrl),
                ),
              ],
            )));
  }
}
