import 'package:flutter/material.dart';

Widget appBar(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 22),
      children: <TextSpan>[
        TextSpan(
            text: 'Cal',
            style:
            TextStyle(fontWeight: FontWeight.w600, color: Color(0xfff56363))),
        TextSpan(
            text: 'Burn',
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
      ],
    ),
  );
}

Widget blueButton(BuildContext context, String label) {
  child:
  Container(
    padding: EdgeInsets.symmetric(vertical: 18),
    decoration: BoxDecoration(
        color: Colors.blue, borderRadius: BorderRadius.circular(30)),
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width - 48,
    child: Text(
      label,
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
  );
}
