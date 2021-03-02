import 'package:admin/View/service_provider.dart';
import 'package:admin/constats.dart';
import 'package:flutter/material.dart';
import '../Components/request_card.dart';

class Request extends StatefulWidget {
  @override
  _RequestState createState() => _RequestState();
}

class _RequestState extends State<Request> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
        appBar: AppBar(title: Text('Request')),

        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: size.height * 0.03),
                RequestCard(ProductId: '123', ProductName: 'laptop'),
                RequestCard(ProductId: '123', ProductName: 'laptop'),
                RequestCard(ProductId: '123', ProductName: 'laptop'),
              ],
            ),
          ),
        ),
        drawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('LE MECANO'),
              decoration: BoxDecoration(
                color:kPrimaryColor
              ),
            ),
            ListTile(
              leading: Icon(Icons.request_quote),
              title: Text('Request'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.people_rounded),
              title: Text('Customer'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
                leading: Icon(Icons.home_repair_service_sharp),
                title: Text('Service'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ServiceProvider()),
                  );
                }),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log out'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        )));
  }
}
