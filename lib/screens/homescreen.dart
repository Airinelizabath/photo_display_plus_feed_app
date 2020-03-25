import 'package:flutter/material.dart';
import 'package:task2/model/user.dart';
import 'package:task2/screens/profile.dart';
import 'package:task2/widgets/abcd.dart';
import 'package:task2/widgets/pagescroll.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[100],//Theme.of(context).primaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child:AppBar(
        backgroundColor:Colors.grey[100],
          leading:
              Padding(
                padding: EdgeInsets.only(left: 25.0,top:20.0),
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.grey[400],
                  iconSize: 20.0,
                  onPressed: (){},
                ),
              ),
          bottomOpacity: 0.0,
          elevation: 0.0,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right:25.0,top:20.0),
                  child: Container(

                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                    BoxShadow(
                    color: Colors.grey,
                    offset: Offset(5, 5),
                    blurRadius: 4.0,
                    ),
                  ],
                  ),
                    child:Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap:()=> Navigator.push(
                          context,MaterialPageRoute(
                            builder: (_)=>Profile(
                              user: cuser,
                            ),
                          ),
                           ),
                         child: CircleAvatar(
                        radius: 15.0,
                        backgroundImage: AssetImage(cuser.photoUrl),
                        ),
                        ),
                      ],
                    ),
                    ),

                  ),
        ],
        ),
      ),
        body: Container(
        child: Padding(
          padding: EdgeInsets.only(left:60.0, right:20.0),
          child: Column(
          children: <Widget>[
            Align( alignment: Alignment.centerLeft,
              child: Text('Hello Brian!',
                //textAlign:TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),

              ),
            ),
            SizedBox(height: 0.5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Today',
                style: TextStyle(
                  fontSize: 15,
                    color: Colors.grey[400],
                  fontWeight: FontWeight.bold,
                ),
                ),
                IconButton(
                  icon: Icon(Icons.create),
                  color: Colors.grey[400],
                  iconSize: 25.0,
                  onPressed: (){},
                ),
              ],
            ),
          ],
          ),
        ),
      ),


    );
  }
}