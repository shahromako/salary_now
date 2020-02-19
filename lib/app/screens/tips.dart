import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Tips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TipsState();
  }
}

class _TipsState extends State<Tips> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  num _index = -1;

  _selectSalary(num i) {
    setState(() {
      _index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF48be87), Color(0xFF6dc14c)],
        ),
      ),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    'Вы получаете 100\$',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    'Поддержите нас. \nПлатите столько, сколько считаете справедливым.',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Spacer(),
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      _selectSalary(0);
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: 150,
                      height: 80,
                      decoration: BoxDecoration(
                          color: (_index == 0)
                              ? Colors.purpleAccent
                              : Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(color: Colors.black26, blurRadius: 5)
                          ]),
                      child: Center(
                        child: Text(
                          '0\$',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _selectSalary(3);
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: 150,
                      height: 80,
                      decoration: BoxDecoration(
                          color: (_index == 3)
                              ? Colors.purpleAccent
                              : Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(color: Colors.black26, blurRadius: 5)
                          ]),
                      child: Center(
                        child: Text(
                          '3\$',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      _selectSalary(5);
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: 150,
                      height: 80,
                      decoration: BoxDecoration(
                          color: (_index == 5)
                              ? Colors.purpleAccent
                              : Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(color: Colors.black26, blurRadius: 5)
                          ]),
                      child: Center(
                        child: Text(
                          '5\$',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _selectSalary(10);
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: 150,
                      height: 80,
                      decoration: BoxDecoration(
                          color: (_index == 10)
                              ? Colors.purpleAccent
                              : Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(color: Colors.black26, blurRadius: 5)
                          ]),
                      child: Center(
                        child: Text(
                          '10\$',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      _selectSalary(-2);
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: 150,
                      height: 80,
                      decoration: BoxDecoration(
                          color: (_index == -2)
                              ? Colors.purpleAccent
                              : Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(color: Colors.black26, blurRadius: 5)
                          ]),
                      child: Center(
                        child: Text(
                          'Другая сумма',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: Center(
                    child: ButtonTheme(
                  buttonColor: Colors.white,
                  height: 50.0,
                  minWidth: MediaQuery.of(context).size.width / 1.5,
                  child: RaisedButton(
                      child: new Text(
                        "Поддержать",
                        style: TextStyle(fontSize: 22),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/success');
                      },
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(12.0))),
                )),
              )
            ],
          )
        ],
      ),
    ));
  }
}
