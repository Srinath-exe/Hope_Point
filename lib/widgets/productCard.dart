import 'package:flutter/material.dart';

import 'package:hope_point/widgets/productDetail.dart';

class ProductCard extends StatefulWidget {
  String product;
  String image;
  String productdetails;
  double price; 
  ProductCard({this.product,this.image, this.productdetails, this.price});
  @override
  Product_CardState createState() => Product_CardState();
}

class Product_CardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
              onTap: () {
          setState(() {
             Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProductPage(product:widget.product,image:widget.image,productdetails:widget.productdetails,price:widget.price)));
          });},
              child: Container(
            height: MediaQuery.of(context).size.height * 0.20,
            width: MediaQuery.of(context).size.width * 0.35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
               boxShadow: [
                    BoxShadow(
                      color: Colors.grey[500],
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 2.0,
                    ),
                  ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.16,
                  width: MediaQuery.of(context).size.width * 0.33,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                     boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                          image: DecorationImage(
                    image: NetworkImage(widget.image),fit:BoxFit.cover),)
                  ),
                 
                
                Text(widget.product,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w600)),
              ],
            )),
      ),
    );
  }
}
