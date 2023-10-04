// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:vjezba/util/button.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blueGrey,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //korisnicki upis
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "add new task"),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save
                Button(text: "save", onPressed: () {}),

                const SizedBox(
                  width: 10,
                ),
                //cancle
                Button(text: "cancle", onPressed: () {})
              ],
            )
          ],
        ),
      ),
    );
  }
}
