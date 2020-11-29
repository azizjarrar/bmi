/**************************************************************************************************************************/
/*******************************   Mohamed Aziz Jarrar   **************************************/
/************ISET RADES M1MPDAM*************/
/**************************************************************************************************************************/
import 'package:flutter/material.dart';
import 'package:bmi/pages/home.dart'; /*import home page  */
import 'package:bmi/pages/res.dart'; /*import res page  */

void main() {
  runApp(MaterialApp(initialRoute: '/location',
      /*Routing  */
      routes: {'/': (context) => Home(), '/result': (context) => Res()}));
}
