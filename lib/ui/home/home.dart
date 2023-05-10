//import 'dart:html';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:studentapp/widgets/navigation_drawer.dart';
import 'package:studentapp/data/user_data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    // Header
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Color.fromARGB(255, 126, 13, 13),
      ),
      drawer: const CustomNavigationDrawer() ,
      //backgroundColor: Colors.grey,
      //Body
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(32),
           child: Column(
            children: [
              /*SizedBox(height: 30,),
              Text(
                'Welcome Back',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                ),
                SizedBox(height: 10,),
                Text(
                  myUserData.email,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 126, 13, 13),
                    fontWeight: FontWeight.bold
                  ),
                  ),*/
                  SizedBox(height: 100,),
                      Row(
                        children: [
                          SizedBox(width: 80,),
                          Text("Absence Report",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                        ],
                      ),
            ],
          ),  
          ),
          //////////////////////////////////////////////////////////////////////////////////////////// Table
                Row(children: [
                  SizedBox(width: 20,),
                    Container( margin: EdgeInsets.all(10),
                      child: Table(
                        defaultColumnWidth: FixedColumnWidth(90.0),  
                        border: TableBorder.all(  
                            color: Colors.grey,  
                            style: BorderStyle.solid,  
                            width: 2),  
                        children: [  
                          TableRow(decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 126, 13, 13),
                            ),
                            ///////////////////////Headers
                          children: [  
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child:Column(children:[Text('ID', style: TextStyle(fontSize: 13.0,color: Colors.white))]),  
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child:Column(children:[Text('Course', style: TextStyle(fontSize: 13.0,color: Colors.white))]),  
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child:Column(children:[Text('Number Of Absences', style: TextStyle(fontSize: 14.0,color: Colors.white))]),  
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child:Column(children:[Text('Percentage', style: TextStyle(fontSize: 13.0,color: Colors.white))]),
                            ),
                          ]
                          ),
                          /////////////////////////////// Data table
                          TableRow( children: [  
                            Padding( padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Container(child: Column(children:[Text('ITIS452',style: TextStyle(color: Color.fromARGB(255, 126, 13, 13)),)])),
                            ),  
                            Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Container(child: Column(children:[Text('Enterprise Architecture')])),
                            ), 
                            Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Column(children:[Text('0'),]),
                            ),
                            Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Column(children:[Text('0%')]),
                            ),
            ],
          ), 
          //////////////////////////////////////////////// 2
          TableRow( children: [  
                            Padding( padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Column(children:[Text('ITIS333',style: TextStyle(color: Color.fromARGB(255, 126, 13, 13)),)]),
                            ),  
                            Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Column(children:[Text('Human Computer Interaction')]),
                            ), 
                            Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Column(children:[Text('3'),]),
                            ),
                            Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Column(children:[Text('3.8%')]),
                            ),
            ],
          ), 
          /////////////////////////////// 3
                          TableRow( children: [  
                            Padding( padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Column(children:[Text('ITIS335',style: TextStyle(color: Color.fromARGB(255, 126, 13, 13)),)]),
                            ),  
                            Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Column(children:[Text('System Analysis & Desgin')]),
                            ), 
                            Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Column(children:[Text('3'),]),
                            ),
                            Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Column(children:[Text('5%')]),
                            ),
            ],
          ), 
          //////////////////////////////////////////////// 4
          TableRow( children: [  
                            Padding( padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Column(children:[Text('ITIS451',style: TextStyle(color: Color.fromARGB(255, 126, 13, 13)),)]),
                            ),  
                            Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Column(children:[Text('Enterprise System')]),
                            ), 
                            Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Column(children:[Text('0'),]),
                            ),
                            Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Column(children:[Text('0%')]),
                            ),
            ],
          ), 
          ////////////////////////////// 5
                          TableRow( children: [
                            Padding( padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Column(children:[Text('ITIS361',style: TextStyle(color: Color.fromARGB(255, 126, 13, 13)),)]),
                            ),  
                            Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Column(children:[Text('Decision Support System')]),
                            ), 
                            Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Column(children:[Text('1'),]),
                            ),
                            Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Column(children:[Text('1.2%')]),
                            ),
            ],
          ), 
          //////////////////////////////////////////////// 6
          TableRow(decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 224, 138, 138)
                            ), children: [    
                            Padding( padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Column(children:[Text('ITIS460',style: TextStyle(color: Color.fromARGB(255, 126, 13, 13)),)]),
                            ),  
                            Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Column(children:[Text('Strategic IT Planning')]),
                            ), 
                            Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Column(children:[Text('6'),]),
                            ),
                            Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Column(children:[Text('12.8%')]),
                            ),
            ],
          ), 
                        ] 
          )
                    )
                ]
                )
        ],
      )
    );
  }
}