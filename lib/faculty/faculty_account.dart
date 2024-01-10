import 'package:cse3_undergrad_studentside/components/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import '../main.dart';

var parser = EmojiParser();

class FacultyAccount extends StatelessWidget {
  final String facultyname = 'Maria Dela Cruz';
  final String facultyid = '1111-111111';
  final bool enrollstatus = false;
  final String college = 'College of Engineering';
  final String gsisnumber = '0033-1115041-3';
  final String tinnumber = '000-000-000-0000';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: DefaultTextStyle(
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
          child: Text('Account'),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none_outlined, color: Colors.black),
            onPressed: () {
              // Handle bell icon press
            },
          ),
        ],
      ),

      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 30.0, right: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Hi, ',
                      style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(
                      text: '$facultyname',
                      style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(
                      text: ' ${parser.get('wave')?.code ?? ''}',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.0),
              DefaultTextStyle(
                style: TextStyle(fontSize: 17.0, color: Colors.black),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.info_outline, size: 18.0),
                    SizedBox(width: 12.0),
                    Text('$facultyid'),
                  ],
                ),
              ),
              SizedBox(height: 5.0),
              DefaultTextStyle(
                style: TextStyle(fontSize: 17.0, height: 1.5, color: Colors.black),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.school_outlined, size: 20.0),
                    SizedBox(width: 12.0),
                    Flexible(
                      child: Text('$college'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.0),
              DefaultTextStyle(
                style: TextStyle(fontSize: 17.0, height: 1.5, color: Colors.black),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.subtitles, size: 18.0),
                    SizedBox(width: 12.0),
                    Flexible(
                      child: Text('$gsisnumber'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.0),
              DefaultTextStyle(
                style: TextStyle(fontSize: 17.0, height: 1.5, color: Colors.black),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.confirmation_number, size: 20.0),
                    SizedBox(width: 12.0),
                    Flexible(
                      child: Text('$tinnumber'),
                    ),
                  ],
                ),
              ),
              SizedBox(height:40.0),
              CustomButton(text: 'Change Password', icon: Icons.password, variant: ButtonVariant.secondary, onPressed: () {
                // Handle change password button press
              }),
              SizedBox(height: 5.0),
              CustomButton(text: 'Log Out', icon: Icons.logout, variant: ButtonVariant.outlined, onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottomSheetApp()),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}