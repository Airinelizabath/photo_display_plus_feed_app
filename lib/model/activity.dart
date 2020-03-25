
import 'package:flutter/cupertino.dart';
import 'package:task2/model/data.dart';
import 'package:task2/model/user.dart';

class Activity {
  final int actid;
  final String des;
  final String actname;
    final User c1;
    final User c2;
    final User c3;
    final String urlp;
     final String ti;
    Activity({
      this.actid,
      this.des,
      this.actname,
      this.c1,
      this.c2,
      this.c3,
      this.urlp,
      this.ti,
    });
}
List <Activity> activity=[
 /* Activity(
      actid: 1,
      des: 'Disconnect is a ',
      ti: '4.30',
      actname:'Disconnect',
      c1:anna,
      c2:nico,
      c3: steve,
      urlp:'assets/images/s6.jpg',
    ),*/
  Activity(
    actid:1,
    actname: 'Spirit of Alasks',
    des:'Really ',
    ti: '4.30 pm',
    urlp:'assets/images/s6.jpg',
  ),
  Activity(
    actname: 'Nico',
    actid: 0,
    des:'Iceland',
    urlp:'assets/images/s6.jpg',
    ti: '2.30 pm',
  )

];

/*class Rep {
  final String rname;
  final int actid;
  final String des;
  final String time;
  Rep({
  this.actid,
   this.des,
   this.time,
   this.rname,
});
}

List <Rep> replies= [

];


class Share {//extends Activity{
  final User sname;
  final int actid;
  final String des;
  final String time;
  final User photo;
  Share({
    this.actid,
    this.des,
    this.time,
    this.sname,
    this.photo,
  });
}

List <Share> shares=[
  Share(
    sname: 'Nico',
    actid: 20,
    des:'ghbbn',
  )
];*/
