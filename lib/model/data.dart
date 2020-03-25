import 'package:task2/model/user.dart';

class Post {
  final User sender;
  final String purl1;
  final String purl2;
  final String purl3;
  final String purl4;
  final String desc;
  final String dlocation;
  final int isLiked;
  final int isRead;
  final int isCom;
  final int isShared;
  final String ti;

  Post({
    this.sender,
    this.purl1,
    this.purl2,
    this.purl3,
    this.purl4,
    this.desc,
    this.dlocation,
    this.isLiked,
    this.isRead,
    this.isCom,
    this.isShared,
    this.ti,
  });
}

List<Post> posts = [
  Post(
    sender: anna,
    purl1:'assets/image/s1.jpg ' ,
    purl2: 'assets/image/s2.jpg ',
    purl3: 'assets/image/s3.jpg ',
    purl4: 'assets/image/s4.jpg ',
    desc:'I\'m loving with it',
    dlocation:'Iceland',
    isShared: 0,
    ti: '5.30 pm'),
  Post(
      sender: steve,
      purl1:'assets/image/s5.jpg ' ,
      desc:'hiiiiiiii',
      dlocation:' Warsaw, Poland',
      isShared:0,
      ti:'2.30 pm'),
  Post(
      sender:nico,
      purl1:'assets/image/s6.jpg ' ,
      desc:' Check out this',
      dlocation:'Iceland',
      isShared:1,
      ti:'1.30 pm'),
];
