import 'package:flutter/cupertino.dart';
import 'package:task2/model/data.dart';
int index;
class FrontList extends StatefulWidget {
  @override
  _FrontListState createState() => _FrontListState();
}

class _FrontListState extends State<FrontList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color:Color(0XFF2196F3),
      child: ListView.builder(
          itemCount:posts.length,
          itemBuilder: (context, index){
            final Post post=posts[index];
            return Container();
          },
      ),
    );}
}




