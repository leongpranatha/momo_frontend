import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled/detail_branch.dart';
import 'package:untitled/detail_device.dart';

import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Scaffold(
      //   body: Container(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //           // CircleAvatar(
      //           //   // backgroundImage: AssetImage(''),
      //           // ),
      //           Text('asuhefu'),
      //           SizedBox(height: 16),
      //           Row(
      //             children: <Widget>[
      //               Icon(
      //                 Icons.call
      //               ),
      //               Text('earr')
      //             ],
      //           ),
      //           SizedBox(height: 16),
      //           Row(
      //             children: <Widget>[
      //               Icon(
      //                   Icons.call
      //               ),
      //               Text('earr')
      //             ],
      //           ),
      //           SizedBox(height: 16),
      //           Card(
      //             child: ListTile(
      //               leading: Icon(
      //                 Icons.alternate_email
      //               ),
      //               title: Text(
      //                 'Login'
      //               ),
      //             ),
      //           ),
      //           SizedBox(height: 16),
      //           Text('uefhiruwhiu')
      //       ],
      //     ),
      //
      //   ),
      //
      // ),
      // home: Login(),
      home: Login(),
    );
  }

  // Scaffold buildScaffold() {
  //   return Scaffold(
  //     body: Container(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           Card(child: Text('Hello', style: TextStyle(fontFamily: 'Roboto'))),
  //           Container(
  //             decoration: BoxDecoration(
  //                 color: Colors.lightBlue,
  //                 borderRadius: BorderRadius.only(
  //                   bottomLeft: const Radius.circular(20.0),
  //                   bottomRight: const Radius.circular(20.0),
  //                 ),
  //                 image: new DecorationImage(
  //                   image: ExactAssetImage(''),
  //                 )),
  //           ),
  //           SizedBox(
  //             height: 20,
  //             width: 120,
  //           ),
  //           Card(
  //             margin: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
  //             child: ListTile(
  //               leading: Icon(
  //                 Icons.people,
  //                 color: Colors.lightBlue,
  //               ),
  //               title: Text(
  //                 'u542961',
  //                 style: TextStyle(
  //                   fontSize: 18,
  //                   color: Colors.lightBlue,
  //                   fontFamily: 'Roboto',
  //                 ),
  //               ),
  //             ),
  //           ),
  //           Card(
  //             margin: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
  //             child: ListTile(
  //               leading: Icon(
  //                 Icons.lock,
  //                 color: Colors.lightBlue,
  //               ),
  //               title: Text(
  //                 'u542961',
  //                 style: TextStyle(
  //                   fontSize: 18,
  //                   color: Colors.lightBlue,
  //                   fontFamily: 'Roboto',
  //                 ),
  //               ),
  //             ),
  //           ),
  //           SizedBox(
  //             height: 20,
  //             width: 120,
  //           ),
  //           ElevatedButton(
  //             style: ElevatedButton.styleFrom(
  //               fixedSize: const Size(350, 50),
  //               primary: Colors.blue,
  //               shape: RoundedRectangleBorder(
  //                   borderRadius: BorderRadius.circular(10.0)),
  //             ),
  //             child: Text(
  //               'LOGIN',
  //               style: TextStyle(
  //                 fontSize: 20,
  //                 color: Colors.white,
  //                 fontFamily: 'Roboto',
  //                 fontWeight: FontWeight.bold,
  //               ),
  //             ),
  //             onPressed: () {
  //               debugPrint('Button Clicked!!');
  //             },
  //           ),
  //           SizedBox(
  //             height: 20,
  //             width: 120,
  //           ),
  //           Text(
  //             'Ada kendala login? klik disini',
  //             style: TextStyle(
  //               color: Colors.white,
  //               fontSize: 10,
  //               fontFamily: 'Roboto',
  //             ),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
