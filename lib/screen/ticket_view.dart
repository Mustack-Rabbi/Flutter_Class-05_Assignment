import 'package:class_05_assignment/utlis/app_layout.dart';
import 'package:class_05_assignment/utlis/app_styles.dart';
import 'package:class_05_assignment/widget/circle_contrainer.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(21),
            topRight: Radius.circular(21),
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "DHK",
                  style: Styles.textStyle4.copyWith(color: Colors.white),
                ),
                Expanded(child: Container()),
                const CircleContainer(),
                Expanded(child: SizedBox(
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      // print("The Screen With ${constraints.constrainWidth()}");

                      return Flex(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        direction: Axis.horizontal,
                        children: List.generate(
                            (constraints.constrainWidth() / 12).floor(),
                            (index) => SizedBox(
                                  width: 3,
                                  height: 1,
                                  child: DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.white)),
                                )),
                      );
                    },
                  ),
                )),
                const CircleContainer(),
                Expanded(child: Container()),
                Text(
                  "CTG",
                  style: Styles.textStyle4.copyWith(color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
