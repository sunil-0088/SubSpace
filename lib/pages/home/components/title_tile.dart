import 'package:flutter/material.dart';
import 'package:sub_space/utils/constant.dart';

class TitleTile extends StatelessWidget {
  final String title;
  const TitleTile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 90, 90, 90)),
            child: const Text(
              'See More',
              style: TextStyle(color: Colors.amber),
            ),
          )
        ],
      ),
    );
  }
}
