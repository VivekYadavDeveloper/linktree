import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Linkbio extends StatefulWidget {
  const Linkbio({Key? key}) : super(key: key);

  @override
  _LinkbioState createState() => _LinkbioState();
}

class _LinkbioState extends State<Linkbio> {
  //When we pass the URL inside _launchUrl(),
  //We Can Open An App Such As The Twitter,Github,Youtube,Instagram and Many More.
  _launchUrl(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("Not Supported");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: CircleAvatar(
                    radius: 70.0,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://avatars.githubusercontent.com/u/53872301?s=400&u=7636897b1c1378893ac859874659d4d3d7cf0a43&v=4"),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "@thevivekyadavofficial",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    "This Is A Quick Website Built In Flutter",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "All The Links Are here!",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),

              //Buttons(Instagram)
              Padding(
                padding: EdgeInsets.all(10),
              ),
              SizedBox(
                width: 400,
                height: 40,
                // ignore: deprecated_member_use
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    onPressed: () => _launchUrl(
                        "https://www.instagram.com/thevivekyadavofficial/"),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      'Instagram Profile',
                      style: TextStyle(color: Colors.white),
                    ),
                    textColor: Colors.white,
                    splashColor: Color(0xFF8134AF),
                    color: Color(0xFFDD2A7B),
                  ),
                ),
              ),

              //(Twitter)
              Padding(
                padding: EdgeInsets.all(10),
              ), //This Padding Use For Space B/w Buttons
              SizedBox(
                width: 400,
                height: 40,
                // ignore: deprecated_member_use
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    onPressed: () =>
                        _launchUrl("https://twitter.com/VivekYadavDev"),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      'Follow Me On Twitter!',
                      style: TextStyle(color: Colors.white),
                    ),
                    textColor: Colors.white,
                    splashColor: Color(0xFF0084B4),
                    color: Color(0xFF1DA1F2),
                  ),
                ),
              ),

              //(Youtube)
              Padding(
                padding: EdgeInsets.all(10),
              ),
              SizedBox(
                width: 400,
                height: 40,
                // ignore: deprecated_member_use
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    onPressed: () => _launchUrl(
                        "https://www.youtube.com/c/VivekYadavOfficial/featured"),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Youtube Channel',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    textColor: Colors.white,
                    splashColor: Color(0xFFCD201F),
                    color: Color(0xFFFF0000),
                  ),
                ),
              ),

              //(Github)
              Padding(
                padding: EdgeInsets.all(10),
              ),
              SizedBox(
                width: 400,
                height: 40,
                // ignore: deprecated_member_use
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    onPressed: () =>
                        _launchUrl("https://github.com/VivekYadavDeveloper"),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      'GitHub Profile',
                      style: TextStyle(color: Colors.white),
                    ),
                    textColor: Colors.white,
                    splashColor: Color(0xFF999999),
                    color: Color(0xFF333333),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.all(10),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Text(
                      "Thank You ! For Coming Here. Don't Forget To Follow Me On These Sites.",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
//https://www.schemecolor.com/github.php
//https://flutter-examples.com/flutter-add-image-icon-inside-rounded-raised-button/#:~:text=Raised%20button%20has%20a%20sub%20widget%20called%20as,and%20create%20custom%20raised%20button%20with%20Row%20widget.
