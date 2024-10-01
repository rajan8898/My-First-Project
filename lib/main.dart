// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  String disTxt = '';

  dynamic calcBtn(String btnTxt, Color bgColor, Color txtColor) {
    return SizedBox(
      height: 75,
      width: 75,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            disTxt += btnTxt;
          });
        },
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: bgColor,
          padding: EdgeInsets.all(1.0),
        ),
        child: Text(
          btnTxt,
          style: TextStyle(
            color: txtColor,
            fontSize: 35,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      disTxt,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 80,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                )
              ],
            ),
            //Calculator buttons
            Text("My Branch"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcBtn('AC', Colors.grey, Colors.black),
                calcBtn('+/-', Colors.grey, Colors.black),
                calcBtn('%', Colors.grey, Colors.black),
                calcBtn('//', Color(0xFFF89B10), Colors.white),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcBtn('7', Color(0xFF333333), Colors.white),
                calcBtn('8', Color(0xFF333333), Colors.white),
                calcBtn('9', Color(0xFF333333), Colors.white),
                calcBtn('x', Color(0xFFF89B10), Colors.white),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcBtn('4', Color(0xFF333333), Colors.white),
                calcBtn('5', Color(0xFF333333), Colors.white),
                calcBtn('6', Color(0xFF333333), Colors.white),
                calcBtn('-', Color(0xFFF89B10), Colors.white),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcBtn('1', Color(0xFF333333), Colors.white),
                calcBtn('2', Color(0xFF333333), Colors.white),
                calcBtn('3', Color(0xFF333333), Colors.white),
                calcBtn('+', Color(0xFFF89B10), Colors.white),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 75,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFF333333),
                    borderRadius: BorderRadius.circular(75),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        disTxt += '0';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Color(0xFF333333),
                    ),
                    child: Text(
                      '0',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                calcBtn('.', Color(0xFF333333), Colors.white),
                calcBtn('=', Color(0xFFF89B10), Colors.white),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
