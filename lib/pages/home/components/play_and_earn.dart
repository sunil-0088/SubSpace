import 'package:flutter/material.dart';

class PlayAndEarn extends StatelessWidget {
  const PlayAndEarn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(top: 10, bottom: 5, left: 5, right: 5),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(
              255,
              97,
              145,
              182,
            ),
            width: 2,
          ),
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 0, 11, 25),
            Color.fromARGB(255, 1, 23, 45),
          ], begin: Alignment.centerLeft, end: Alignment.centerRight),
        ),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(
              Icons.monetization_on,
              color: Colors.amber,
            ),
            Text(
              "Play and earn coins",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.double_arrow),
          ],
        ),
      ),
    );
  }
}
