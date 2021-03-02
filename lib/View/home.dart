import 'package:admin/View/request.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Verificationpage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          margin: EdgeInsets.symmetric(vertical: 85, horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).primaryColor,
            boxShadow: [
              BoxShadow(
                  color: Theme.of(context).hintColor.withOpacity(0.2),
                  offset: Offset(0, 10),
                  blurRadius: 20)
            ],
          ),
          child: Form(
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 10,),
                    Text('+91'),
                    SizedBox(width: 10,),
                    Container(
                      padding: EdgeInsets.all(6),
                      width:200,
                        decoration: BoxDecoration(


                            border: Border.all(color: Colors.blueGrey[100]),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Enter Mobile No',
                          ),
                        )),
                  ],
                ),
                FlatButton(
                    child: Text('Verify'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Request()), // VerificationPage()),
                      );
                    })
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
