import 'package:flutter/material.dart';

class CreditCardFront extends StatelessWidget {
  final String cardNumber;
  final String cardholderName;
  final String expirationDate;

  const CreditCardFront({
    required this.cardNumber,
    required this.cardholderName,
    required this.expirationDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            cardNumber,
            style: const TextStyle(fontSize: 30, color: Colors.white),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cardholderName,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                expirationDate,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}