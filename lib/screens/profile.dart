import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task2/model/user.dart';
import 'package:task2/widgets/category.dart';
import 'package:task2/widgets/pagescroll.dart';

class Profile extends StatefulWidget {
  final User user;
  
  Profile({this.user});
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width*0.535;
    return Scaffold(
      backgroundColor:Colors.grey[50],
       appBar: AppBar(backgroundColor:Colors.grey[50],
         bottomOpacity: 0.0,
         elevation: 0.0,
         actions: <Widget>[
           Padding(
             padding: EdgeInsets.only(right: 10.0),
             child: IconButton(
               icon: Icon(Icons.storage),
               color: Colors.grey[400],
               iconSize: 20.0,
               onPressed: (){},
             ),
           ),
         ],

    ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 50.0,top:15.0,right: 25.0),
            child: Container(
              height: 180.0,
             //color: Colors.amber,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                       offset: Offset(5, 5),
                        blurRadius: 100.0,
                      ),
                    ],
                  ),
                  ),
                  CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage(cuser.photoUrl),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              cuser.name,
                               style: TextStyle(
                              fontSize: 20.0,
                               fontWeight: FontWeight.bold,
                                ),
                            ),
                            SizedBox(width: 5.0,),
                            IconButton(
                              icon: Icon(Icons.perm_contact_calendar),
                              color: Colors.red,
                              iconSize: 25.0,
                              onPressed: (){},
                            ),
                          ],
                        ),
                      Container (
                            width: c_width,
                            child: new Column (
                              children: <Widget>[
                                Text(
                                  cuser.bio,
                                  style: TextStyle(
                                    fontSize:11.0,
                                    color: Colors.grey[400],
                                    letterSpacing: 1.0,
                                    height: 1.2,
                                  ),
                                ),
                                ],
                            ),
                          ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.location_on),
                              color: Colors.grey[400],
                              iconSize: 20.0,
                              onPressed: (){},
                            ),
                            Text(
                              cuser.location,
                              style: TextStyle(
                                fontSize:10.0,
                                color: Colors.grey[400],
                              ),
                            )
                          ],
                        ),
                      ],

                    )
                  ),
                    ],
                  ),
            ),
          ),
          CategorySelector(),
          Padding(
            padding:EdgeInsets.only(left: 50),
            child: Container(
                child: Row(
                  children: <Widget>[
                    Text(
                      'Activity',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.star),
                          color: Colors.grey,
                          iconSize: 10.0,
                          onPressed: (){},
                        ),
                        IconButton(
                          icon: Icon(Icons.star),
                          color: Colors.grey,
                          iconSize: 10.0,
                          onPressed: (){},
                        ),
                        IconButton(
                          icon: Icon(Icons.star),
                          color: Colors.grey,
                          iconSize: 10.0,
                          onPressed: (){},
                        ),
                      ],
                    )
                  ],
                ),

            ),
          ),
          PageScroll(),

        ],

      ),
    );

  }
}
