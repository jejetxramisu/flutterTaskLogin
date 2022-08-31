import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  String title;
  String image;
  String description;

  DetailPage(
      {Key? key,
      required this.title,
      required this.image,
      required this.description})
      : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Detail League"),
          backgroundColor: Color.fromRGBO(1, 186, 118, 1),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Image.network(widget.image),
                SizedBox(
                  height: 15,
                ),
                Text(
                  widget.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(widget.description)
              ],
            ),
          ),
        ));
  }
}
