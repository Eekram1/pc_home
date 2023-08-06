import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => PureCode(), // Wrap your app
      ),
    );

class PureCode extends StatelessWidget {
  const PureCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PureCodeApp(),
    );
  }
}

class PureCodeApp extends StatelessWidget {
  const PureCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Color.fromARGB(255, 47, 195, 221),
              size: 50,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.chat),
              color: Color.fromARGB(255, 47, 195, 221),
              iconSize: 45,
              onPressed: () {},
            ),
            IconButton(
                icon: Icon(Icons.call),
                color: Color.fromARGB(255, 47, 195, 221),
                iconSize: 45,
                onPressed: () {}),
          ],
          backgroundColor: Colors.white,
        ),

        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   child: Icon(Icons.add),
        // ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 33,
              ),
              ClipRRect(
                child: Image.asset(
                  "assets/img/logo.png",
                  fit: BoxFit.cover,
                  height: 150,
                  width: double.infinity,
                ),
              ),
              SizedBox(
                height: 19,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        child: Image.asset(
                      "assets/img/COM.png",
                    )),
                    SizedBox(
                      height: 310,
                    ),
                    SizedBox(
                      height: 19,
                      width: 19,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "OUR SERVICES  ",
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(146, 35, 146, 35)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 20, 20, 103))),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "OUR WORK       ",
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(146, 35, 146, 35)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 42, 225, 183))),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "CONTACT US    ",
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(146, 35, 146, 35)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 88, 195, 234))),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "ABOUT US         ",
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(146, 35, 146, 35)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 174, 195, 201))),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
