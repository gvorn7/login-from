import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    return const Column(
      children: [
        Padding(
          // padding: EdgeInsets.all(25),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    //  borderRadius: BorderRadius.all(w),

                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 90, 82, 82))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white10)),
                fillColor: Color.fromARGB(255, 224, 221, 221),
                filled: true,
                hintText: "Student ID"),
          ),
        )
      ],
    );
  }
}
