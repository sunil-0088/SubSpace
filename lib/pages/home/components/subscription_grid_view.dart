import 'package:flutter/material.dart';
import 'package:sub_space/helper/data_base.dart';

import '../../../utils/constant.dart';

class SubscriptionGridView extends StatelessWidget {
  const SubscriptionGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: kBackgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: GridView.builder(
          scrollDirection: Axis.horizontal,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 166,
              childAspectRatio: 1.1,
              crossAxisSpacing: 20,
              mainAxisSpacing: 5),
          itemCount: AllSubscription.length,
          itemBuilder: (BuildContext ctx, index) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: AssetImage(AllSubscription[index].bgImageUrl),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 45,
                    width: 38,
                    decoration: const BoxDecoration(
                      color: kGreenBg,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(5),
                          topLeft: Radius.circular(5)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        'UPTO ${AllSubscription[index].discount} % OFF',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 5,
                  top: 5,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      AllSubscription[index].pfimageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 4,
                    left: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AllSubscription[index].plateformName,
                        ),
                        Text(
                          'Staring A ₹${AllSubscription[index].prize}',
                          style: const TextStyle(
                              color: Colors.amber, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ))
              ],
            ) /* add child content here */,
          ),
        ),
      ),
    );
  }
}
