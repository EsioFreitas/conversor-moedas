import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'dart:convert';
const request = 'https://api.hgbrasil.com/finance?format=json&key=d29341d9';

void main() async {

  http.Response response = await http.get(request);
  json.decode(response.body)["results"]['currencies'];
  runApp(MaterialApp(
    home: Container(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
