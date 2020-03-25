import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task2/model/activity.dart';
import 'package:task2/model/data.dart';
import 'package:task2/widgets/abcd.dart';

class PageScroll extends StatefulWidget {
  @override
  _PageScrollState createState() => _PageScrollState();
}

class _PageScrollState extends State<PageScroll> {
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: EdgeInsets.only(left: 40.0,right: 25.0),
          child: Container(
                  height: 300.0,
                  //   color: Colors.black,
                  decoration: BoxDecoration(
                  //color: Colors.white,
                  ),
            child:
            ListView.builder(
            itemCount: activity.length,
            itemBuilder: (BuildContext context,index) {
              final Activity act = activity[index];
              return Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 15.0,),
                    height: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5.0),
                        topRight: Radius.circular(5.0),
                        bottomLeft: Radius.circular(5.0),
                        bottomRight: Radius.circular(5.0),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.reply),
                              color: Colors.grey[400],
                              iconSize: 20.0,
                              onPressed: () {},
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Container(
                                width: 220.0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[

                                    Padding(
                                      padding: EdgeInsets.only(top: 18.0),
                                      child: RichText(
                                        text: TextSpan(
                                          text: 'Replied in ',
                                          style: TextStyle(
                                            color: Colors.grey[400],
                                            fontSize: 10.0,
                                          ),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: activity[index].actname,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                    fontWeight: FontWeight
                                                        .bold)),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Text(activity[index].des,
                                      style:TextStyle(
                                      color:Colors.grey[400],
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                  ],
                                ),
                              ),
                            ),
                            //   SizedBox(width: 50.0,),
                            Align(alignment: Alignment.topCenter,
                                child: Text(act.ti,
                                style: TextStyle(
                                  color:Colors.grey[400],
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.bold,

                                ),),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15.0,left:90.0),
                  height: 120.0,
                   decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                    topRight: Radius.circular(5.0),
                    bottomLeft: Radius.circular(5.0),
                    bottomRight: Radius.circular(5.0),
                  ),
                   ),

                   child: Row(
                     children: <Widget>[
                       Stack(
                         children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only( top:20.0),
                          child: Container(
                              child:Row(
                                children: <Widget>[

                                  Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                    children:<Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(left:20.0),
                                        child: RichText(
                                          text: TextSpan(
                                            text: 'Shared  ',
                                            style: TextStyle(
                                              color: Colors.grey[400],
                                              fontSize: 10.0,
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: '${activity[index].actname} \'s',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight
                                                          .bold)),
                                              TextSpan(
                                                  text:' album' ,
                                                  style: TextStyle(
                                                      color: Colors.grey[400],
                                                      fontWeight: FontWeight
                                                          .bold)),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          IconButton(
                                            icon: Icon(Icons.location_on),
                                            color: Colors.grey[400],
                                            iconSize: 15.0,
                                            onPressed: () {},
                                          ),
                                          Text(posts[index].dlocation,
                                          style: TextStyle(
                                            color: Colors.grey[400],
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                          ),),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 20.0),
                                        child: Text(activity[index].des,
                                          style:TextStyle(
                                            color:Colors.grey[400],
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                          ),),
                                      ),
                                    ] ,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left:30.0,top: 2.0),
                                    child: Align(alignment: Alignment.topCenter,
                                      child: Text(act.ti,
                                        style: TextStyle(
                                          color:Colors.grey[400],
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.bold,

                                        ),),
                                    ),
                                  ),
                                ],
                              )
                          ),
                        ),
                      ],
                     ),


                     ],
                   ),
                  ),
                ],
              );
            }
          ),
          ),
      );
  }
}
