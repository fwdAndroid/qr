import 'dart:convert';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:qr/mainScreen.dart';
import 'package:qr/splash.dart';

class NoFound extends StatefulWidget {
  var response;
  var phoneController;
  NoFound({super.key, required this.response, required this.phoneController});

  @override
  State<NoFound> createState() => _NoFoundState();
}

class _NoFoundState extends State<NoFound> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/logo.png",
              height: 200,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Text(
              widget.phoneController,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Text(
              widget.response,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, fixedSize: Size(150, 30)),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (builder) => Splash()));
              },
              child: const Text(
                'Scan Again',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
