import 'package:flutter/material.dart';
import 'package:share/share.dart';

class GiphyScreen extends StatelessWidget {
  final Map _giphyData;

  const GiphyScreen(this._giphyData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_giphyData["title"]),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              Share.share(_giphyData["images"]["fixed_height"]["url"]);
            },
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(_giphyData["images"]["fixed_height"]["url"]),
      ),
    );
  }
}
