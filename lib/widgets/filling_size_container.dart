import 'package:flutter/material.dart';

class FillingSizeContainer extends StatefulWidget {
  const FillingSizeContainer({super.key});

  @override
  State<FillingSizeContainer> createState() => _FillingSizeContainerState();
}

class _FillingSizeContainerState extends State<FillingSizeContainer> {
  int _currentSelection = 1;

  Widget myContainer(String q, int _selector) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: InkWell(
        onTap: () {
          setState(() {
            _currentSelection = _selector;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            color:
                (_currentSelection == _selector) ? Colors.green : Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
            child: Text(
              q,
              style: TextStyle(
                color: (_currentSelection == _selector)
                    ? Colors.white
                    : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        myContainer("Full", 1),
        myContainer("1/2 Full", 2),
        myContainer("3/4 Full", 3),
        myContainer("1/4 Full", 4),
      ],
    );
  }
}
