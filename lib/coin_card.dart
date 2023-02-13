import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class CoinCard extends StatelessWidget {
  CoinCard(
      {super.key,
      required this.name,
      required this.change,
      required this.changePercentage,
      required this.imageURL,
      required this.price,
      required this.symbol});
  String name;
  String symbol;
  String imageURL;
  num price;
  num change;
  num changePercentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0, bottom: 10.0),
      child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(5, 5),
                    blurRadius: 10,
                    spreadRadius: 10),
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, -5),
                    blurRadius: 10,
                    spreadRadius: 10)
              ]),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(5, 5),
                            blurRadius: 10,
                            spreadRadius: 10),
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(-5, -5),
                            blurRadius: 10,
                            spreadRadius: 10)
                      ]),
                  height: 60,
                  child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.network(imageURL)),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            name,
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      Text(
                        symbol,
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      price.toDouble().toString(),
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      change.toDouble().toString(),
                      style: TextStyle(
                        color: (change<0)?Colors.red:Colors.green,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      changePercentage.toDouble().toString(),
                      style: TextStyle(
                        color: (changePercentage<0)?Colors.red:Colors.green,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
