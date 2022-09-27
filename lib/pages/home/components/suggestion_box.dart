import 'package:flutter/material.dart';
import 'package:sub_space/utils/constant.dart';

class SuggestionBox extends StatelessWidget {
  const SuggestionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 140,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: kBackgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'What do you want us to list next?',
                style: TextStyle(fontSize: 20),
              ),
              const Text('Suggest us a subscription', style: TextStyle(fontSize: 12)),
              Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 250,
                    child: TextField(
                      autofocus: false,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(width: 0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          filled: true,
                          focusColor: kPrimaryColor,
                          hintStyle: const TextStyle(color: kPrimaryColor),
                          hintText: "Give your suggestion",
                          fillColor: const Color.fromARGB(96, 68, 68, 68)),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.forward,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
