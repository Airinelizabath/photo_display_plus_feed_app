import 'package:flutter/material.dart';
import 'package:task2/model/user.dart';
//import 'package:task2/widgets/frontlist.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  int i=0;
  final List<String> categories = ['Photos', 'Followers', 'Following'];
  final List<String> cat1=[cuser.nfphotos,cuser.followers,cuser.following];

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(left: 50.0),
      child: Container(
        height: 50.0,
        color:Colors.grey[50],
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                child: Padding(
                  padding: EdgeInsets.only(left:10.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        categories[index],
                        style: TextStyle(
                          color: index == selectedIndex ? Colors.grey[500] : Colors.grey[400],
                          fontSize: 8.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                      Text(
                        cat1[index],
                        style: TextStyle(
                          color: index == selectedIndex ? Colors.black : Colors.black87,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),

                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}