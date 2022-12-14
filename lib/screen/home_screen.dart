import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:class_05_assignment/screen/ticket_view.dart';
import 'package:class_05_assignment/utlis/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 217, 238, 218),
      body: ListView(
        children: [
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ---------- Welcome to the Profile ----------

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AnimatedTextKit(
                          isRepeatingAnimation: false,
                          animatedTexts: [
                            TypewriterAnimatedText("Welcome, Mustack Rabbi",
                                textStyle: Styles.textStyle4,
                                speed: const Duration(milliseconds: 150)),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Book Your Tickets",
                          style: Styles.headLine5,
                        ),
                      ],
                    ),

                    //---------- Apps Logo ----------

                    Container(
                      padding: const EdgeInsets.all(20.0),
                      height: 60,
                      width: 80,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.blue,
                              Color.fromARGB(255, 217, 238, 218),
                            ],
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.zero,
                              bottomRight: Radius.circular(10)),
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/airplane_logo.png"),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // ---------- Search here ----------

                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      icon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                      hintText: 'Search',
                      border: InputBorder.none,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // ---------- New Ticket Option ----------

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("New Tickets", style: Styles.textStyle2),
                    const Text(
                      "See More",
                      style: TextStyle(color: Colors.green),
                    )
                  ],
                ),

                const SizedBox(height: 20),

                // ---------- New Ticket View ----------

                const TicketView()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
