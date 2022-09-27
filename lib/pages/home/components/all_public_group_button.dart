import 'package:flutter/material.dart';
import 'package:sub_space/utils/constant.dart';

class AllPublicGroupButton extends StatelessWidget {
  const AllPublicGroupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient:const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromARGB(255, 255, 153, 51),
                  Color.fromARGB(255, 255, 255, 255),
                  Color.fromARGB(255, 19, 136, 8),
                ])),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.black,
            ),
            alignment: Alignment.center,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromARGB(225, 33, 33, 33),
              ),
              child: const Center(
                  child: Text(
                'Show All Public Groups',
                style: TextStyle(color: kPrimaryColor, fontSize: 15),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
