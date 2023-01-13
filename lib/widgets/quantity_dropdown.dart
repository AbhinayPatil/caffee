import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class QuantityDropdown extends StatefulWidget {
  const QuantityDropdown({super.key});

  @override
  State<QuantityDropdown> createState() => _QuantityDropdownState();
}

class _QuantityDropdownState extends State<QuantityDropdown> {
  String selectedValue = '1';

  // List of items in our dropdown menu
  var items = ['1', '2', '3', '4', '5'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          isExpanded: true,
          buttonPadding: const EdgeInsets.symmetric(
            horizontal: 2,
          ),
          buttonDecoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          icon: const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Colors.black26,
          ),
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style:
                          const TextStyle(fontSize: 14, color: Colors.black26),
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value as String;
            });
          },
          buttonHeight: 28,
          buttonWidth: 40,
          itemHeight: 20,
        ),
      ),
    );
  }
}
