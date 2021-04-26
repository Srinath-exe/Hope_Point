import 'package:flutter/material.dart';

import 'package:hope_point/CuponsPage.dart';
import 'package:hope_point/TandC.dart';
import 'package:hope_point/login.dart';
import 'package:hope_point/referralPage.dart';
import 'package:hope_point/widgets/storesPage.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            title: Text('Profile', style: TextStyle(color: Colors.black))),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Container(
                child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.5,
                       
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Name',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Text('+255-622600096',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                       
                      ]),
                )),
                  Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.06,
              child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            side: BorderSide(color: Colors.transparent))),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.orange[200];
                        return Colors.white;
                      },
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cupons',
                        style: TextStyle(
                          fontSize: 17,
                         
                          color: Colors.black,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios,
                          size: 30, color: Colors.black)
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                       Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CuponsPage()));
                    });
                  }),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.06,
              child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            side: BorderSide(color: Colors.transparent))),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.orange[200];
                        return Colors.white;
                      },
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Stores ',
                        style: TextStyle(
                          fontSize: 17,
                          
                          color: Colors.black,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios,
                          size: 30, color: Colors.black)
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                       Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Stores()));
                    });
                  }),
            ),
            
          
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: MediaQuery.of(context).size.height * 0.06,
            //   child: ElevatedButton(
            //       style: ButtonStyle(
            //         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            //             RoundedRectangleBorder(
            //                 side: BorderSide(color: Colors.transparent))),
            //         backgroundColor: MaterialStateProperty.resolveWith<Color>(
            //           (Set<MaterialState> states) {
            //             if (states.contains(MaterialState.pressed))
            //               return Colors.orange[200];
            //             return Colors.white;
            //           },
            //         ),
            //       ),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Text(
            //             'Notifications',
            //             style: TextStyle(
            //               fontSize: 17,
                          
            //               color: Colors.black,
            //             ),
            //           ),
            //           Icon(Icons.arrow_forward_ios,
            //               size: 30, color: Colors.black)
            //         ],
            //       ),
            //       onPressed: () {
            //         setState(() {
            //             Navigator.push(context,
            //               MaterialPageRoute(builder: (context) => NotificationPage()));
            //         });
            //       }),
            // ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.06,
              child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            side: BorderSide(color: Colors.transparent))),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.orange[200];
                        return Colors.white;
                      },
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Referral',
                        style: TextStyle(
                          fontSize: 17,
                         
                          color: Colors.black,
                        ),
                      ),
                        Icon(Icons.arrow_forward_ios,
                          size: 30, color: Colors.black)
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                       Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ReferralPage()));
                    });
                  }),
            ), Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.06,
              child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            side: BorderSide(color: Colors.transparent))),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.orange[200];
                        return Colors.white;
                      },
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Terms and Conditions',
                        style: TextStyle(
                          fontSize: 17,
                         
                          color: Colors.black,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios,
                          size: 30, color: Colors.black)
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                           Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TnC()));
                    });
                  }),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.06,
              child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            side: BorderSide(color: Colors.transparent))),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.orange[200];
                        return Colors.white;
                      },
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Logout',
                        style: TextStyle(
                          fontSize: 17,
                      
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width:10),
                       Icon(Icons.logout,
                          size: 30, color: Colors.black)
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    });
                  }),
            ),
            // ListTile(
            //   title: Text("Ntotify"),
            //   trailing: Icon(Icons.notifications),
            //   onTap: () {}
            // ) 
          
          ],
        ))));
  }
}
