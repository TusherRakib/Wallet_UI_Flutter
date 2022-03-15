import 'package:flutter/material.dart';
import 'package:wallet_ui/config/colors.dart';
import 'package:wallet_ui/config/size.dart';


class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return Container(
      margin: EdgeInsets.symmetric(horizontal: width / 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text(
            "My Account",
            style:
             TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Container(
            height: width / 6,
            width: width / 6,
            decoration: BoxDecoration(
                color: Colors.deepOrangeAccent.shade200,
                boxShadow: AppColors.neumorpShadow,
                shape: BoxShape.circle),
            child: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    margin: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                        color: Colors.orange, shape: BoxShape.circle),
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.all(11),
                    decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent.shade100,
                        boxShadow: AppColors.neumorpShadow,
                        shape: BoxShape.circle),
                  ),
                ),
                const Center(
                  child:  Icon(Icons.notifications),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
