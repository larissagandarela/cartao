import 'package:flutter/material.dart';
import 'package:swap_hiring/credit_card_back.dart';
import 'package:swap_hiring/credit_card_front.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CreditCardFront(),
            SizedBox(
              height: 10,
            ),
            CreditCardBack()
          ],
        ),
      ),
    );
  }
}