import 'package:flutter/material.dart';
import 'package:wallet_ui/config/colors.dart';
import 'package:wallet_ui/config/size.dart';

class ArrowButton extends StatelessWidget {
  final EdgeInsets? margin;
  final Widget? icon;
   ArrowButton({this.margin, this.icon});
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    return Expanded(
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
            color: Colors.deepOrangeAccent.shade100,
            borderRadius: BorderRadius.circular(15),
            boxShadow: AppColors.neumorpShadow),
        alignment: Alignment.center,
        child: icon,
      ),
    );
  }
}
