import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class MilkChoice extends StatefulWidget {
  const MilkChoice({super.key});

  @override
  State<MilkChoice> createState() => _MilkChoiceState();
}

class _MilkChoiceState extends State<MilkChoice> {
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  bool val4 = false;
  bool val5 = false;
  bool val6 = false;
  bool val7 = false;

  onChanged1(bool newValue) {
    setState(() {
      val1 = newValue;
    });
  }

  onChanged2(bool newValue) {
    setState(() {
      val2 = newValue;
    });
  }

  onChanged3(bool newValue) {
    setState(() {
      val3 = newValue;
    });
  }

  onChanged4(bool newValue) {
    setState(() {
      val4 = newValue;
    });
  }

  onChanged5(bool newValue) {
    setState(() {
      val5 = newValue;
    });
  }

  onChanged6(bool newValue) {
    setState(() {
      val6 = newValue;
    });
  }

  onChanged7(bool newValue) {
    setState(() {
      val7 = newValue;
    });
  }

  Widget mySwitch(bool v, String text, Function onChanged) {
    return Row(
      children: [
        FlutterSwitch(
          activeColor: Colors.green,
          inactiveColor: Colors.blueGrey.shade300.withOpacity(.8),
          activeToggleColor: Colors.green,
          inactiveToggleColor: Colors.blueGrey.shade300,
          activeToggleBorder: Border.all(color: Colors.white),
          inactiveToggleBorder: Border.all(color: Colors.white),
          width: 35.0,
          height: 15.0,
          toggleSize: 15.0,
          value: v,
          borderRadius: 30.0,
          onToggle: (val) {
            onChanged(val);
          },
        ),
        const SizedBox(
          width: 10,
        ),
        FittedBox(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w200,
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          //mainAxisAlignment: ,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .45,
              child: mySwitch(val1, "Skim Milk", onChanged1),
            ),
            mySwitch(val2, "Full Cream Milk", onChanged2),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          //mainAxisAlignment: ,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .45,
              child: mySwitch(val3, "Almond Milk", onChanged3),
            ),
            mySwitch(val4, "Full Cream Milk", onChanged4),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          //mainAxisAlignment: ,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .45,
              child: mySwitch(val5, "Soy Milk", onChanged5),
            ),
            mySwitch(val6, "Oat Milk", onChanged6),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            mySwitch(val7, "Lactose Free Milk", onChanged7),
          ],
        ),
      ],
    );
  }
}
