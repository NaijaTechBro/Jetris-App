// ignore_for_file: prefer_const_constructors

import 'package:ecom_app/utils/my_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(children: [
          // App bar
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),

                  // plus button
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.grey[400], shape: BoxShape.circle),
                    child: Icon(Icons.add),
                  )
                ]),
          ),

          SizedBox(height: 25),

          //  cards
          SizedBox(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                MyCard(
                  balance: 5673.00,
                  cardNumber: 12437458,
                  expiryMonth: 12,
                  expiryYear: 09,
                  color: Colors.deepPurple[400],
                ),
                MyCard(
                  balance: 3673.00,
                  cardNumber: 12437458,
                  expiryMonth: 12,
                  expiryYear: 09,
                  color: Colors.blue[400],
                ),
                MyCard(
                  balance: 8673.00,
                  cardNumber: 12437458,
                  expiryMonth: 12,
                  expiryYear: 09,
                  color: Colors.green[400],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
