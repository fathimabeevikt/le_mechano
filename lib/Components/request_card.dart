import 'package:flutter/material.dart';
import 'package:admin/constats.dart';

class RequestCard extends StatelessWidget {
  String ProductId;
  String ProductName;
  RequestCard({this.ProductId, this.ProductName});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: 1, horizontal: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Container(
            margin: const EdgeInsets.only(bottom: 6.0),
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
              boxShadow: [
                // color: Colors.white, //background color of box
                BoxShadow(
                  color: Colors.blueGrey[100],
                  offset: Offset(0.0, 1.0),
                  blurRadius: 6.0, // soften the shadow
                  spreadRadius: 5.0, //extend the shadow
                )
              ],
            ),
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Product Id :'),
                        Text(
                          '$ProductId',
                          style: kTextStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Product Name :',
                    ),
                    Text(
                      '$ProductName',
                      style: kTextStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
