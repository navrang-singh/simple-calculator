import 'package:flutter/material.dart';
import 'package:simple_calculator/services/service.dart';
import 'package:simple_calculator/widgets/widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Calculation A = Calculation();
  String text = '';
  String history = '';

  void func(String btn) {
    A.calcuFunc(btn);
    setState(() {
      text = A.text;
      history = A.history;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculator',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            // ignore: sort_child_properties_last
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                history,
                style: const TextStyle(fontSize: 25),
              ),
            ),
            alignment: const Alignment(1.0, 1.0),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            // ignore: sort_child_properties_last
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                text,
                style:
                    const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
            alignment: const Alignment(1.0, 1.0),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomButton(
                      width: 80,
                      height: 80,
                      text: "AC",
                      buttonColor: Colors.black87,
                      textColor: Colors.white,
                      onPress: func,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomButton(
                      width: 80,
                      height: 80,
                      text: "7",
                      borderwidth: 3,
                      onPress: func,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomButton(
                      width: 80,
                      height: 80,
                      text: "4",
                      borderwidth: 3,
                      onPress: func,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomButton(
                      width: 80,
                      height: 80,
                      text: "1",
                      borderwidth: 3,
                      onPress: func,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomButton(
                      width: 80,
                      height: 80,
                      text: ".",
                      borderwidth: 3,
                      onPress: func,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomButton(
                      width: 80,
                      height: 80,
                      text: "C",
                      buttonColor: Colors.black87,
                      textColor: Colors.white,
                      onPress: func,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomButton(
                      width: 80,
                      height: 80,
                      text: "8",
                      borderwidth: 3,
                      onPress: func,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomButton(
                      width: 80,
                      height: 80,
                      text: "5",
                      borderwidth: 3,
                      onPress: func,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomButton(
                      width: 80,
                      height: 80,
                      text: "2",
                      borderwidth: 3,
                      onPress: func,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomButton(
                      width: 80,
                      height: 80,
                      text: "0",
                      borderwidth: 3,
                      onPress: func,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomButton(
                      width: 80,
                      height: 80,
                      text: "%",
                      buttonColor: Colors.black87,
                      textColor: Colors.white,
                      onPress: func,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomButton(
                      width: 80,
                      height: 80,
                      text: "9",
                      borderwidth: 3,
                      onPress: func,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomButton(
                      width: 80,
                      height: 80,
                      text: "6",
                      borderwidth: 3,
                      onPress: func,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomButton(
                      width: 80,
                      height: 80,
                      text: "3",
                      borderwidth: 3,
                      onPress: func,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomButton(
                      width: 80,
                      height: 80,
                      text: "00",
                      borderwidth: 3,
                      onPress: func,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomButton(
                      width: 80,
                      height: 80,
                      text: "/",
                      buttonColor: Colors.black87,
                      textColor: Colors.white,
                      onPress: func,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomButton(
                      width: 80,
                      height: 80,
                      text: "x",
                      buttonColor: Colors.black87,
                      textColor: Colors.white,
                      onPress: func,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomButton(
                      width: 80,
                      height: 80,
                      text: "-",
                      buttonColor: Colors.black87,
                      textColor: Colors.white,
                      onPress: func,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomButton(
                      width: 80,
                      height: 80,
                      text: "+",
                      buttonColor: Colors.black87,
                      textColor: Colors.white,
                      onPress: func,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomButton(
                      width: 80,
                      height: 80,
                      text: "=",
                      buttonColor: Colors.black87,
                      textColor: Colors.white,
                      onPress: func,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
