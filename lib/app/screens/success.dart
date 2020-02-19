import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Success extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SuccessState();
  }
}

class _SuccessState extends State<Success> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Spacer(),
        Center(
            child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF48be87), Color(0xFF6dc14c)],
            ),
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
          child: Icon(
            Icons.check,
            color: Colors.white,
            size: 100,
          ),
        )),
        Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          child: Text(
            'Операция успешна',
            style: TextStyle(fontSize: 26),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          child: Text(
            'Мы перевели ваши деньги на вашу карту',
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
        Spacer(),
        Center(
          child: FlatButton(
            child: Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  '/', (Route<dynamic> route) => false);
            },
          ),
        ),
      ],
    ));
  }
}
