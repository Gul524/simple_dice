import 'package:dice/configs/colors.dart';
import 'package:dice/widgets/diceController.dart';
import 'package:dice/widgets/diceWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DiceController());
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          kcPrimary,
          kcSecondary,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Center(
          child: Obx(
            () => Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    'Dice Roller',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                if (controller.totalDices.value == 1)
                  Obx(() => DiceWidget(
                      diceNumber: controller.diceNumber1.value,
                      rotationValue: controller.rotationValue.value)),
                if (controller.totalDices.value == 2)
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 50,
                          ),
                          Obx(() => DiceWidget(
                              diceNumber: controller.diceNumber1.value,
                              rotationValue: controller.rotationValue.value)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Obx(() => DiceWidget(
                              diceNumber: controller.diceNumber2.value,
                              rotationValue: controller.rotationValue.value)),
                          SizedBox(
                            width: 50,
                          ),
                        ],
                      ),
                    ],
                  ),
                if (controller.totalDices.value == 3)
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 50,
                          ),
                          Obx(() => DiceWidget(
                              diceNumber: controller.diceNumber1.value,
                              rotationValue: controller.rotationValue.value)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Obx(() => DiceWidget(
                              diceNumber: controller.diceNumber2.value,
                              rotationValue: controller.rotationValue.value)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Obx(() => DiceWidget(
                              diceNumber: controller.diceNumber3.value,
                              rotationValue: controller.rotationValue.value)),
                          SizedBox(
                            width: 50,
                          ),
                        ],
                      ),
                    ],
                  ),
                if (controller.totalDices.value == 4)
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Obx(() => DiceWidget(
                              diceNumber: controller.diceNumber1.value,
                              rotationValue: controller.rotationValue.value)),
                          SizedBox(
                            width: 30,
                          ),
                          Obx(() => DiceWidget(
                              diceNumber: controller.diceNumber2.value,
                              rotationValue: controller.rotationValue.value)),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Obx(() => DiceWidget(
                              diceNumber: controller.diceNumber3.value,
                              rotationValue: controller.rotationValue.value)),
                          SizedBox(
                            width: 30,
                          ),
                          Obx(() => DiceWidget(
                              diceNumber: controller.diceNumber4.value,
                              rotationValue: controller.rotationValue.value)),
                        ],
                      ),
                    ],
                  ),
                  
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox.shrink(),
                    ElevatedButton(
                      onPressed: controller.rollDice,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kcBgGround,
                        foregroundColor: kcForeGround,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text("Roll Dice",
                          style: TextStyle(fontSize: 18 )),
                    ),
                    Row(
                      children: [
                        if (controller.totalDices.value > 1)
                          ElevatedButton(
                            onPressed: controller.decreaseDice,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: kcBgGround,
                              foregroundColor: kcForeGround,
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: Icon(
                              Icons.minimize_rounded,
                              size: 30,
                              color: kcForeGround,
                            ),
                          ),
                        SizedBox(
                          width: 10,
                        ),
                        if (controller.totalDices.value < 4)
                          ElevatedButton(
                            onPressed: controller.addDice,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: kcBgGround,
                              foregroundColor: kcForeGround,
                              padding: const EdgeInsets.all(8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 30,
                              color: kcForeGround,
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
     
    );
  }
}
