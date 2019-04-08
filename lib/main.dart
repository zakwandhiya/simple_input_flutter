import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Input Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Input Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),        //Contoh padding di flutter
        child: Column(
          children: <Widget>[
            Text("Nama  :"),
            TextField(                              //==================
              controller: textEditingController,    //Widget input field
            ),                                      //==================
            FlatButton(
              color: Colors.blue,
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                return showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text("Hallo " + textEditingController.text + " , semangat belajarnya"),
                    );
                  },
                );
              },
            )
          ],
        ) 
      )
    );
  }
}
