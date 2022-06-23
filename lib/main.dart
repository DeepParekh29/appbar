import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}


class FirstPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {} ,
            ),
            title: Text('First Page'),
            centerTitle: true,
            actions: [
              Icon(Icons.settings),
              Icon(Icons.more),
            ],
            backgroundColor: Colors.black,
            elevation: 5,
            toolbarOpacity: 0.5,
          ),
        body: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => SecondPage())
            );
          } ,
          child: Center(child: Text(' Next Page')),
        )
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text('Second Page')));
  }
}
