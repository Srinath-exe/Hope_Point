import 'package:flutter/material.dart';

class StoreCard extends StatefulWidget {
  String city;
  String address;
  StoreCard({this.city, this.address});
  @override
  _StorCcardState createState() => _StorCcardState();
}

class _StorCcardState extends State<StoreCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 3,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.18,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('City:'),
                        Container(
                            width:
                                MediaQuery.of(context).size.width * 0.9 * 0.6,
                            child: Text(
                                widget.city))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Address:'),
                        Container(
                            width:
                                MediaQuery.of(context).size.width * 0.9 * 0.6,
                            child: Text(widget.address))
                                // 'POBOX- 9642, Bongoyo Road, \nOysterbay,Dar Es Salaam, \nTanzania, Eastern Africa.'))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Phone:'),
                        Container(
                            width:
                                MediaQuery.of(context).size.width * 0.9 * 0.6,
                            child: Text('+255-622600096'))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Email:'),
                        Container(
                            width:
                                MediaQuery.of(context).size.width * 0.9 * 0.6,
                            child: Text('info@hopeholding.co.tz'))
                      ],
                    )
                  ]),
            )),
      ),
    );
  }
}
