import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SugarChoice extends StatefulWidget {
  const SugarChoice({super.key});

  @override
  State<SugarChoice> createState() => _SugarChoiceState();
}

class _SugarChoiceState extends State<SugarChoice> {
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  bool val4 = false;

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
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .45,
              child: mySwitch(val1, "Sugar X1", onChanged1),
            ),
            mySwitch(val2, "Sugar X2", onChanged2),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .45,
              child: mySwitch(val3, "Half Sugar", onChanged3),
            ),
            mySwitch(val4, "No Sugar", onChanged4),
          ],
        ),
      ],
    );
  }
}
