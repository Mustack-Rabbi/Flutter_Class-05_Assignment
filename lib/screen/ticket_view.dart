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
          borderRadius: const BorderRadius.only(
            topLeft: const Radius.circular(21),
            topRight: Radius.circular(21),
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Dhaka",
                  style: Styles.textStyle4.copyWith(color: Colors.white),
                ),
                const Spacer(),
                const CircleContainer(),
                const Spacer(),
                const CircleContainer(),
                const Spacer(),
                Text(
                  "Dhaka",
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
