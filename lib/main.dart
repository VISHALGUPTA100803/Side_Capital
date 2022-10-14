import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const test(),
    );
  }
}

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SideCapital'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.grey,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            setState(
                              () {
                                Container(
                                  margin: EdgeInsets.all(10.0),
                                  width: 100.0,
                                  height: 100.0,
                                  color: Colors.red,
                                );
                              },
                            );
                          },
                          child: Container(
                              margin: EdgeInsets.all(10.0),
                              width: 100.0,
                              height: 100.0,
                              color: Colors.red,
                              child: (Image.asset('images/star.png'))),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(
                              () {},
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            width: 100.0,
                            height: 100.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            setState(
                              () {},
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            width: 100.0,
                            height: 100.0,
                            color: Colors.grey,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(
                              () {
                                Container(
                                    margin: EdgeInsets.all(10.0),
                                    width: 100.0,
                                    height: 100.0,
                                    color: Colors.green,
                                    child: (Image.asset('images/star.png')));
                              },
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            width: 100.0,
                            height: 100.0,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
