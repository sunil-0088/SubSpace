import 'package:flutter/material.dart';

import '../../../utils/constant.dart';

class GroupTile extends StatelessWidget {
  final String name;
  final int totalMember;
  final int joinedMember;
  final String prize;
  final String memberName;
  final String plateformImage;

  const GroupTile(
      {super.key,
      required this.name,
      required this.totalMember,
      required this.joinedMember,
      required this.prize,
      required this.memberName,
      required this.plateformImage});

  @override
  Widget build(BuildContext context) {
    final double sliderValue = joinedMember / totalMember;
    // sliderValue = joinedMember / totalMember;
    return Container(
      padding: const EdgeInsets.all(8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Stack(
          children: [
            Column(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.all(8.0),
                  // dense: true,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  )),
                  tileColor: kBackgroundColor,
                  leading: Stack(children: [
                    Image.asset(plateformImage),
                    const Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 15,
                        child: Icon(Icons.boy),
                      ),
                    )
                  ]),
                  title: Text(
                    name,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('By $memberName', overflow: TextOverflow.ellipsis),
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Text(
                          '$joinedMember/$totalMember friends',
                          style: const TextStyle(color: kAceentColor),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '₹$prize',
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 30,
                        width: 100,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: kAceentColor),
                          child: const Text(
                            '     Join     ',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                  // isThreeLine: true,
                ),
                LinearProgressIndicator(
                  value: sliderValue,
                  backgroundColor: kPrimaryColor,
                  // valueColor: kBackgroundColor,
                  color: kAceentColor,
                ),
              ],
            ),
            Container(
              height: 18,
              width: 80,
              decoration: const BoxDecoration(
                color: kGreenBg,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                ),
              ),
              child: Text(
                '${10 + totalMember}+ groups',
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
