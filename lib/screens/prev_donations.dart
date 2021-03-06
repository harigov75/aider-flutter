//import 'package:aider/screens/donorlogin.dart';
import 'package:flutter/material.dart';
import 'package:aider/widgets/prevdon.dart';
import 'package:aider/widgets/rowelement.dart';

class PrevDonation extends StatefulWidget {
  @override
  _PrevDonationState createState() => _PrevDonationState();
}

class _PrevDonationState extends State<PrevDonation> {
  int val = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          //appBar: AppBar(
          //   title: Image.asset('images/logo.png',),
          //  backgroundColor: Color(0xFFEDF2F4),
          //also need a go back button to previous page
          // ),
          //***********bottom notched bar********************
          bottomNavigationBar: new BottomAppBar(
            color: Color(0xff2B2D42),
            shape: CircularNotchedRectangle(),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.circle,
                    color: Color(0xFF2B2D42),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: new FloatingActionButton(
            backgroundColor: Color(0xFF2B2D42),
            child: Icon(Icons.home_outlined),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          //**************bottom notched bar ends*******************8
          resizeToAvoidBottomInset: true,
          body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/background.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Container(
                        height: 80,
                        child: Center(
                          child: Text(
                            "\nRequests",
                            style: TextStyle(
                                fontSize: 29.0,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 20.0),
                          rowelement(
                            "loading",
                            "loading",
                            "loading",
                            "loading",
                            "loading",
                            "loading",
                            context,
                          ),

                          /* predon(context, 3),
                          SizedBox(height: 20.0),
                          predon(context, 4),
                          SizedBox(height: 20.0),
                          predon(context, 5),
                          SizedBox(height: 20.0),
                          predon(context, 6),
                          SizedBox(height: 20.0),
                          predon(context, 7),
                          SizedBox(height: 20.0),
                          predon(context, 8),
                          SizedBox(height: 20.0),
                          predon(context, 9),
                          SizedBox(height: 20.0),
                          predon(context, 10),
                          SizedBox(height: 20.0),
                          predon(context, 11),
                          SizedBox(height: 20.0),
                          predon(context, 12),
                          SizedBox(height: 20.0),*/
                        ],
                      ),
                    ))
                  ],
                ),
              ))),
    );
  }
}

//function for each row
//createdialogbox(BuildContext context) {}
