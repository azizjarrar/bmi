/**************************************************************************************************************************/
/*******************************   Mohamed Aziz Jarrar   **************************************/
/************ISET RADES M1MPDAM*************/
/**************************************************************************************************************************/
import 'package:flutter/material.dart';

class Res extends StatefulWidget {
  @override
  _ResState createState() => _ResState();
}

class _ResState extends State<Res> {
  @override
  Widget build(BuildContext context) {
    final String args = ModalRoute.of(context).settings.arguments;
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  child: Center(
                    child: Text("Your Result",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.0)),
                  ),
                )),
            Expanded(
                flex: 5,
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
                  margin: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //get first arg
                      //arg are the data passed from home page
                      //exmaple args=Healty,13
                      //args.slpit give you [Healthy,13]
                      /*******state of user*******/
                      Text(args.split(",")[0],
                          style: TextStyle(
                              color: Colors.greenAccent[400],
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0)),
                      /*******score of user*******/
                      Text(args.split(",")[1],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0)),
                      Text(args.split(",")[2],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.pinkAccent[400],
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0))
                    ],
                  ),
                )),
          ],
        ));
  }
}
