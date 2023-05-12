import 'package:flutter/material.dart';

const kTitleTextStyle = TextStyle(
  color: Color(0xff86CDFF),
  fontSize: 50,
  fontWeight: FontWeight.bold,
);
const kSeatNumberTextStyle = TextStyle(
  color: Color(0xff86CDFF),
  fontSize: 12,
  fontWeight: FontWeight.bold,
);
const kSeatTypeTextStyle = TextStyle(
  color: Color(0xff86CDFF),
  fontSize: 8,
  fontWeight: FontWeight.bold,
);

const kInactiveColor = Color(0xffCEEAFF);
const kActiveColor = Color(0xff0096FF);
const kNoInfoContainer = Color.fromARGB(0, 0, 0, 0);

var textInputDecoration = InputDecoration(
  labelStyle:
      const TextStyle(color: Color(0xff86CDFF), fontWeight: FontWeight.w300),
  focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xff86CDFF), width: 5),
      borderRadius: BorderRadius.circular(10)),
  enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xff86CDFF), width: 5),
      borderRadius: BorderRadius.circular(10)),
  errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xff86CDFF), width: 5),
      borderRadius: BorderRadius.circular(10)),
);
