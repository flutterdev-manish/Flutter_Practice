import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController inputController = TextEditingController();

  String result = "";
  // int facto(var value) {
  //   var factorial = 1;
  //   for (var i = 1; i <= value; i++) {
  //     factorial *= i;
  //   }
  //   return factorial;
  // }
  int facto(value) {
    var factorial = 1;
    if (value == 1) {
      return 1;
    } else {
      factorial = value * facto(value - 1);
      return factorial;
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bg1.jpeg"), fit: BoxFit.fill),
        ),
        alignment: Alignment.center,
        child: Container(
            height: size.height / 2,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.deepPurple),
              borderRadius: BorderRadius.circular(15),
              color: Colors.black.withOpacity(0.1),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Center(
                            child: Text(
                          "Factorial Finder!",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple[300]),
                        )),
                        const SizedBox(
                          height: 40,
                        ),
                        TextFormField(
                          onTapOutside: (value) {
                            FocusScope.of(context).unfocus();
                          },
                          style: const TextStyle(color: Colors.black),
                          controller: inputController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.format_list_numbered,
                              color: Colors.deepPurpleAccent,
                            ),
                            hintText: "Enter a number to find",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Factorial",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.deepPurpleAccent),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              result,
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.deepPurpleAccent),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple[400],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          onPressed: () {
                            print(inputController.text.toString());
                            setState(() {
                              if (inputController.text.isNotEmpty) {
                                var value = int.parse(inputController.text);
                                result =
                                    'of ${inputController.text} is ${facto(value)}';
                              } else {
                                return;
                              }
                              FocusScope.of(context).unfocus();
                            });
                          },
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>const GridScreen()));

                          // style: ButtonStyle(
                          //   backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                          //   elevation: MaterialStateProperty.all(5),
                          // ),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Find",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 05,
                                ),
                                Icon(
                                  Icons.search,
                                  color: Colors.white,
                                  size: 18,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ))),
      ),
    );
  }
}
