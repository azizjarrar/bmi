/**************************************************************************************************************************/
/*******************************   Mohamed Aziz Jarrar   **************************************/
/************ISET RADES M1MPDAM*************/
/**************************************************************************************************************************/

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

/********************************/
/***********Home Page************/
/********************************/
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double heightValue = 0; /*height of user*/
  int heightValueRound = 0; /*height of user int not double */
  int age = 30; /*age of user */
  int weight = 50; /* weight of user */
  bool gender = true; /*gender if male true if female false */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        /*********************************/
        /***********  navbar   ***********/
        /*********************************/
        appBar: AppBar(
          backgroundColor: Colors.grey[850],
          title: Text("BMI calculator"),
        ),
        /*********************************/
        /************   body  ************/
        /*********************************/
        body: SingleChildScrollView(
          child: Container(
            /************if height of screen akber 720 take all height of screnn if not take always 720 height************/
            height: (MediaQuery.of(context).size.height * 1) > 720
                ? (MediaQuery.of(context).size.height * 1) -
                    AppBar().preferredSize.height -
                    24
                : 720,
            child: Column(
              children: [
                /***************************************************************/
                /**********************user gender column***********************/
                /***************************************************************/
                Expanded(
                    flex: 4,
                    child: GestureDetector(
                      onTap: () {
                        /****on click  change gender to male***/
                        setState(() {
                          gender = true;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[700],
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 5,
                                      blurRadius: 3,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                padding: EdgeInsets.all(20),
                                width: 155,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/mars-solid.png',
                                      height: 60,
                                      width: 60,
                                      color: gender
                                          ? Colors.pinkAccent[400]
                                          : Colors.white,
                                    ),
                                    Text(
                                      "Male",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 2.0),
                                    )
                                  ],
                                )),
                            GestureDetector(
                              onTap: () {
                                /****on click  change gender to female***/
                                setState(() {
                                  gender = false;
                                });
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[700],
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.1),
                                        spreadRadius: 5,
                                        blurRadius: 3,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  padding: EdgeInsets.all(20),
                                  width: 155,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/venus-solid.png',
                                        height: 60,
                                        width: 60,
                                        color: !gender
                                            ? Colors.pinkAccent[400]
                                            : Colors.white,
                                      ),
                                      Text(
                                        "Female",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 2.0),
                                      )
                                    ],
                                  )),
                            )
                          ],
                        ),
                      ),
                    )),
                /***************************************************************/
                /**********************user height Column***********************/
                /***************************************************************/
                Expanded(
                  flex: 4,
                  child: Container(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[700],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 3,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Height: $heightValueRound" + "cm",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2.0),
                            ),
                            SizedBox(height: 30),
                            Slider(
                                min: 0,
                                max: 500,
                                activeColor: Colors.white,
                                inactiveColor: Colors.pinkAccent[400],
                                value: heightValue,
                                onChanged: (double value) {
                                  setState(() {
                                    heightValue = value;
                                    heightValueRound = value.round().toInt();
                                  });
                                })
                          ],
                        ),
                      )),
                ),
                /***************************************************************/
                /******************user weight and age Column*******************/
                /***************************************************************/
                Expanded(
                    flex: 4,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[700],
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 5,
                                    blurRadius: 3,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              padding: EdgeInsets.all(20),
                              width: 155,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Weight",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 2.0),
                                  ),
                                  Text("$weight",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 2.0)),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      ButtonTheme(
                                        minWidth: 30.0,
                                        height: 30.0,
                                        shape: CircleBorder(),
                                        buttonColor: Colors.pinkAccent[400],
                                        child: RaisedButton(
                                          onPressed: () {
                                            setState(() {
                                              weight = weight + 1;
                                            });
                                          },
                                          child: Icon(Icons.add,
                                              color: Colors.white),
                                        ),
                                      ),
                                      ButtonTheme(
                                        minWidth: 30.0,
                                        height: 30.0,
                                        shape: CircleBorder(),
                                        buttonColor: Colors.pinkAccent[400],
                                        child: RaisedButton(
                                          onPressed: () {
                                            setState(() {
                                              if (weight > 0) {
                                                weight = weight - 1;
                                              }
                                            });
                                          },
                                          child: Icon(Icons.remove,
                                              color: Colors.white),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )),
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[700],
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 5,
                                    blurRadius: 3,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              padding: EdgeInsets.all(20),
                              width: 155,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Age",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 2.0),
                                  ),
                                  Text("$age",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 2.0)),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      ButtonTheme(
                                        minWidth: 30.0,
                                        height: 30.0,
                                        shape: CircleBorder(),
                                        buttonColor: Colors.pinkAccent[400],
                                        child: RaisedButton(
                                          onPressed: () {
                                            setState(() {
                                              age = age + 1;
                                            });
                                          },
                                          child: Icon(Icons.add,
                                              color: Colors.white),
                                        ),
                                      ),
                                      ButtonTheme(
                                        minWidth: 30.0,
                                        height: 30.0,
                                        shape: CircleBorder(),
                                        buttonColor: Colors.pinkAccent[400],
                                        child: RaisedButton(
                                          onPressed: () {
                                            setState(() {
                                              if (age > 0) {
                                                age = age - 1;
                                              }
                                            });
                                          },
                                          child: Icon(Icons.remove,
                                              color: Colors.white),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ))
                        ],
                      ),
                    )),
                /***************************************************************/
                /************************btn calc column************************/
                /***************************************************************/
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.0),
                          spreadRadius: 5,
                          blurRadius: 3,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: ButtonTheme(
                        minWidth: MediaQuery.of(context).size.width * 100,
                        child: RaisedButton(
                          color: Colors.pinkAccent[400],
                          child: Text("GET  RESULT",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2.0)),
                          onPressed: () {
                            /***************************************************************/
                            /*********************  bmi formule ****************************/
                            /***************************************************************/
                            double result = 0.0; /* result */
                            int resultInt = 0; /* result but with out ,*/
                            int ageLocal = age; /* age of user  */
                            double localweight =
                                weight.toDouble(); /*weight of user */
                            double height = heightValue; /*height of user  */
                            String bmi = ""; /* user bmi State  */
                            /*************test if there is empty blayes ****************/
                            if ((ageLocal.toString().isNotEmpty && age > 0) &&
                                (weight.toString().isNotEmpty && weight > 0) &&
                                (height.toString().isNotEmpty && height > 0)) {
                              result = (703 * localweight) / (height * 12.2);
                              resultInt =
                                  result.round(); /* get result with out , */
                              if (result >= 25.0 && result < 29.9) {
                                bmi = "Overweight";
                              } else if (result >= 18.5 && result < 25.0) {
                                bmi = "Healty";
                              } else if (result >= 29.9) {
                                bmi = "Obese";
                              } else {
                                bmi = "Underweight";
                              }
                              /*navigate to result page  */
                              Navigator.pushNamed(context, "/result",
                                  arguments: ("$bmi,$resultInt").toString());
                            } else {
                              /* if there is blasa fer8a show msg to user  */
                              Fluttertoast.showToast(
                                  msg: "Fill all  the data",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.white,
                                  textColor: Colors.black,
                                  fontSize: 15.0);
                            }
                          },
                        )),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
