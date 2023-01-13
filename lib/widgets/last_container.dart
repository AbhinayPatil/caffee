import 'package:flutter/material.dart';

class LastContainer extends StatefulWidget {
  const LastContainer({super.key});

  @override
  State<LastContainer> createState() => _LastContainerState();
}

class _LastContainerState extends State<LastContainer> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width * .8,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.black54.withOpacity(.4),
        ),
        child: Row(
          children: [
            Checkbox(
              value: value,
              checkColor: Colors.white,
              activeColor: Colors.green,
              side: const BorderSide(color: Colors.white54),
              onChanged: (val) {
                setState(() {
                  value = val!;
                });
              },
            ),
            const Text(
              "High Priority",
              style: TextStyle(
                color: Colors.white54,
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade700,
                  ),
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
