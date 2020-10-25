import 'package:clima/services/location.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Future<void> getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.longitude);
    print(location.latitude);
  }

  @override
  void initState() {
    getLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
