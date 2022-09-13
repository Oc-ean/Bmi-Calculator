import 'package:bmi_calculator/component/icon_content.dart';
import 'package:bmi_calculator/utils/app_layout.dat.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final dynamic color;
  final dynamic icon;
  final String text;
  const ReusableCard(
      {Key? key, required this.color, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10, top: 15),
      margin: EdgeInsets.only(top: 15, left: 20),
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: color,
      ),
      child: Container(
        margin: EdgeInsets.only(
          top: 20,
        ),
        child: IconContent(
          icon: icon,
          label: text,
        ),
      ),
    );
  }
}

// class ReusableCard extends StatelessWidget {
//   ReusableCard({
//     required colour,
//     required icon,
//     required onPress,
//   });
//   final Color colour;
//   final Widget cardChild;
//   final onPress;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(bottom: 10, top: 15),
//       margin: EdgeInsets.only(top: 15, left: 20),
//       width: 160,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(11),
//         color: colour,
//       ),
//       child: Container(
//         margin: EdgeInsets.only(top: 20),
//         child: IconContent(
//           icon: icon,
//           label: 'MALE',
//         ),
//       ),
//     );
//     // return GestureDetector(
//     //   onTap: onPress,
//     //   child: Container(
//     //     height: 200,
//     //     width: 120,
//     //     child: cardChild,
//     //     margin: EdgeInsets.all(15.0),
//     //     decoration: BoxDecoration(
//     //       color: colour,
//     //       borderRadius: BorderRadius.circular(10.0),
//     //     ),
//     //   ),
//     // );
//   }
// }
