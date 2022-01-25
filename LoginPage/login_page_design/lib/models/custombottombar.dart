import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  final Color color;
  const CustomBottomBar(this.color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        height: height * 0.08,
        width: double.infinity,
        color: Colors.grey[350],
      ),
      Positioned(
        right: width * 0.08,
        bottom: height * 0.08 - height * 0.08 * 0.5,
        child: InkWell(
          onTap: () {},
          child: Container(
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(10)),
              height: height * 0.06,
              width: width * 0.16,
              child: Image.asset(
                "arrow.png",
                width: 10,
              )),
        ),
      )
    ]);
  }
}
