//packages
import 'package:flutter/material.dart';

//custom imports
import './widget/naamInput.dart';

//run application
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _namenIndex = 0;

  void _buttonPressed() {
    setState(() {
      _namenIndex = _namenIndex + 1;
    });
    print(_namenIndex);
  }

  @override
  Widget build(BuildContext context) {
    var namen = [
      'Vul uw achternaam in',
      'Vul uw voornaam in',
    ];
    //TODO: implement build
    return MaterialApp(
      title: 'Stem!',
      theme: new ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Stem!',
            ),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 300),
          width: double.infinity,
          child: Column(
            children: <Widget>[
              NamenInput(
                namen[_namenIndex],
              ),
              RaisedButton(
                child: Text('Billy'),
                onPressed: _buttonPressed,
              ),
              RaisedButton(
                child: Text('Mark'),
                onPressed: _buttonPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
