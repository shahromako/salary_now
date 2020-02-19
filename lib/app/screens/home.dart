import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  final List<String> _salaries = [
    '100\$',
    '90\$',
    '80\$',
    '70\$',
    '60\$',
    '50\$',
    '40\$',
    '30\$',
    '20\$',
    '10\$'
  ];
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
                        'Возьмите деньги сейчас',
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
                        'Наслаждайтесь жизнью',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: List.generate(_salaries.length, (index) {
                              return GestureDetector(
                                onTap: () {
                                  _selectSalary(index);
                                },
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  height:
                                      MediaQuery.of(context).size.height / 5,
                                  decoration: BoxDecoration(
                                      color: (_index == index)
                                          ? Colors.purpleAccent
                                          : Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 5)
                                      ]),
                                  child: Center(
                                    child: Text(
                                      _salaries[index],
                                      style: TextStyle(fontSize: 50),
                                    ),
                                  ),
                                ),
                              );
                            })),
                      )),
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
                            "Получить",
                            style: TextStyle(fontSize: 22),
                          ),
                          onPressed: () {
                            if (_index >= 0) {
                              Navigator.pushNamed(context, '/tips');
                            }
                          },
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(12.0))),
                    )),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
