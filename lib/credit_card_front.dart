import 'package:flutter/material.dart';

class CreditCardFront extends StatelessWidget {

  // ignore: use_key_in_widget_constructors
  const CreditCardFront();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width *.7,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue
      ),

      padding: const EdgeInsets.all(20),
      child: const Column(
        children: [
          SizedBox(
            height: 20,
            ),
            Text(
              '4444 4444 4444 4444',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Valid \n thru',
                style: TextStyle(fontSize: 10, color: Colors.white),
                ),
                Text('Valid \n thru',
                style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
              child: Text('Larissa Gandarela',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
              )
            ),
        ],
      ),
    );
  }
}