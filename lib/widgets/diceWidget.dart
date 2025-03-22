import 'dart:math';
import 'package:dice/configs/colors.dart';
import 'package:flutter/material.dart';

class DiceWidget extends StatelessWidget {
  final int diceNumber;
  final double rotationValue;

  const DiceWidget(
      {super.key, required this.diceNumber, required this.rotationValue});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: rotationValue),
        duration: const Duration(milliseconds: 600),
        builder: (context, double angle, child) {
          return Transform.rotate(
            angle: angle * pi, // Convert to radians
            child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: kcForeGround,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: kcBgGround, width: 4),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (diceNumber == 1)
                      Icon(
                        Icons.circle,
                        size: 15,
                      ),
                    if (diceNumber == 2)
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.circle,
                              size: 15,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.circle,
                              size: 15,
                            )
                          ]),
                    if (diceNumber == 3)
                      Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.circle,
                                  size: 15,
                                ),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: 15,
                                ),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ]),
                        ],
                      ),
                    if (diceNumber == 4)
                      Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.circle,
                                  size: 15,
                                )
                              ]),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.circle,
                                  size: 15,
                                )
                              ]),
                        ],
                      ),
                    if (diceNumber == 5)
                      Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.circle,
                                  size: 15,
                                )
                              ]),
                          SizedBox(
                            height: 5,
                          ),
                          Icon(
                            Icons.circle,
                            size: 15,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.circle,
                                  size: 15,
                                )
                              ]),
                        ],
                      ),
                    if (diceNumber == 6)
                      Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.circle,
                                  size: 15,
                                )
                              ]),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.circle,
                                  size: 15,
                                )
                              ]),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.circle,
                                  size: 15,
                                )
                              ]),
                        ],
                      ),
                  ],
                )),
          );
        });
  }
}
