import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:practice_flutter/screens/home_page.dart';
import 'package:practice_flutter/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isChange = true;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 32),
            child: Column(
              children: [
                Container(
                  height: 430,
                  width: size.width,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage(
                        "assets/Tablet.png",
                      ),
                    ),
                    color: Colors.amber.shade700,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),

                  // decoration: const BoxDecoration(
                  //   image: DecorationImage(
                  //       image: AssetImage("assets/bg1.jpeg"), fit: BoxFit.fill),
                  // ),
                  // alignment: Alignment.center,
                  // child: Container(
                  //   height: 420,
                  //   width: double.infinity,
                  //   margin: const EdgeInsets.symmetric(horizontal: 20),
                  //   decoration: BoxDecoration(
                  //     border: Border.all(color: Colors.deepPurple),
                  //     borderRadius: BorderRadius.circular(15),
                  //     color: Colors.black.withOpacity(0.1),
                  //   ),
                  //   child: ClipRRect(
                  //     borderRadius: BorderRadius.circular(20),
                  //     child: BackdropFilter(
                  //         filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
                  //         child: Padding(
                  //           padding: const EdgeInsets.all(25),
                  //           child: Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               Center(
                  //                   child: Text(
                  //                 "Welcome!",
                  //                 style: TextStyle(
                  //                     fontSize: 32,
                  //                     fontWeight: FontWeight.bold,
                  //                     color: Colors.deepPurple[300]),
                  //               )),
                  //               const SizedBox(
                  //                 height: 40,
                  //               ),
                  //               TextFormField(
                  //                 style: const TextStyle(color: Colors.black),
                  //                 controller: emailController,
                  //                 keyboardType: TextInputType.emailAddress,
                  //                 decoration: InputDecoration(
                  //                   prefixIcon: const Icon(
                  //                     Icons.email,
                  //                     color: Colors.deepPurpleAccent,
                  //                   ),
                  //                   hintText: "Email",
                  //                   border: OutlineInputBorder(
                  //                       borderRadius: BorderRadius.circular(16)),
                  //                 ),
                  //               ),
                  //               const SizedBox(
                  //                 height: 20,
                  //               ),
                  //               TextFormField(
                  //                 obscureText: isChange,
                  //                 style: const TextStyle(color: Colors.black),
                  //                 controller: passwordController,
                  //                 onTapOutside: (value) {
                  //                   FocusScope.of(context).unfocus();
                  //                 },
                  //                 decoration: InputDecoration(
                  //                   prefixIcon: const Icon(
                  //                     Icons.lock,
                  //                     color: Colors.deepPurpleAccent,
                  //                   ),
                  //                   suffixIcon: IconButton(
                  //                     color: Colors.deepPurpleAccent,
                  //                     icon: Icon(isChange
                  //                         ? Icons.visibility_off
                  //                         : Icons.visibility),
                  //                     onPressed: () {
                  //                       setState(
                  //                         () {
                  //                           isChange = !isChange;
                  //                         },
                  //                       );
                  //                     },
                  //                   ),
                  //                   hintText: "Password",
                  //                   border: OutlineInputBorder(
                  //                       borderRadius: BorderRadius.circular(16)),
                  //                 ),
                  //               ),
                  //               const SizedBox(
                  //                 height: 10,
                  //               ),
                  //               const Row(
                  //                 mainAxisAlignment: MainAxisAlignment.end,
                  //                 children: [
                  //                   Text(
                  //                     "Forget Password?",
                  //                     style: TextStyle(fontSize: 14, color: Colors.white),
                  //                   ),
                  //                 ],
                  //               ),
                  //               const SizedBox(
                  //                 height: 20,
                  //               ),
                  //               SizedBox(
                  //                 width: MediaQuery.of(context).size.width,
                  //                 height: 45,
                  //                 child: ElevatedButton(
                  //                   style: ElevatedButton.styleFrom(
                  //                     backgroundColor: Colors.deepPurple[400],
                  //                     shape: RoundedRectangleBorder(
                  //                       borderRadius: BorderRadius.circular(15.0),
                  //                     ),
                  //                   ),
                  //                   onPressed: () {
                  //                     setState(() {
                  //                       FocusScope.of(context).unfocus();
                  //                       isLoading = true;
                  //                     });
                  //                     Future.delayed(
                  //                         const Duration(
                  //                           seconds: 1,
                  //                         ), () {
                  //                       setState(() {
                  //                         isLoading = false;
                  //                         Navigator.push(
                  //                             context,
                  //                             MaterialPageRoute(
                  //                                 builder: (context) =>
                  //                                     const HomePage()));
                  //                       });
                  //                     });
                  //                   },
                  //                   // Navigator.push(context, MaterialPageRoute(builder: (context)=>const GridScreen()));

                  //                   // style: ButtonStyle(
                  //                   //   backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                  //                   //   elevation: MaterialStateProperty.all(5),
                  //                   // ),
                  //                   child: Padding(
                  //                     padding:
                  //                         const EdgeInsets.only(top: 12.0, bottom: 12.0),
                  //                     child: isLoading
                  //                         ? const SizedBox(
                  //                             height: 20,
                  //                             width: 20,
                  //                             child: CircularProgressIndicator(
                  //                               strokeWidth: 2,
                  //                             ),
                  //                           )
                  //                         : const Row(
                  //                             mainAxisAlignment: MainAxisAlignment.center,
                  //                             children: [
                  //                               Text(
                  //                                 "Login",
                  //                                 style: TextStyle(
                  //                                     color: Colors.white,
                  //                                     fontSize: 18,
                  //                                     fontWeight: FontWeight.bold),
                  //                               ),
                  //                               SizedBox(
                  //                                 width: 05,
                  //                               ),
                  //                               Icon(
                  //                                 Icons.arrow_forward,
                  //                                 color: Colors.white,
                  //                                 size: 18,
                  //                               )
                  //                             ],
                  //                           ),
                  //                   ),
                  //                 ),
                  //               ),
                  //               Row(
                  //                   mainAxisAlignment: MainAxisAlignment.center,
                  //                   children: [
                  //                     const Text(
                  //                       "Don't have an account?",
                  //                       style:
                  //                           TextStyle(fontSize: 14, color: Colors.white),
                  //                     ),
                  //                     TextButton(
                  //                         onPressed: () {
                  //                           Navigator.push(
                  //                               context,
                  //                               MaterialPageRoute(
                  //                                   builder: (context) =>
                  //                                       const SignUpScreen()));
                  //                         },
                  //                         child: const Text("Signup?",
                  //                             style: TextStyle(
                  //                               color: Colors.deepPurple,
                  //                             ))),
                  //                   ]),
                  //             ],
                  //           ),
                  //         )),
                  //   ),
                  // ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              height: 200,
              width: 100,
              decoration: BoxDecoration(color: Colors.amber[700]),
            ),
          ),
          Positioned(
            top: 390,
            right: 8,
            left: 8,
            child: Container(
              height: 410,
              width: size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800]),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      style: const TextStyle(color: Colors.black),
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.amber[700],
                        ),
                        hintText: "Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      obscureText: isChange,
                      style: const TextStyle(color: Colors.black),
                      controller: passwordController,
                      onTapOutside: (value) {
                        FocusScope.of(context).unfocus();
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.amber[700],
                        ),
                        suffixIcon: IconButton(
                          color: Colors.amber[700],
                          icon: Icon(isChange
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(
                              () {
                                isChange = !isChange;
                              },
                            );
                          },
                        ),
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    width: 360,
                    decoration: BoxDecoration(
                        color: Colors.amber[700],
                        borderRadius: BorderRadius.circular(16)),
                    alignment: Alignment.center,
                    child: const Text("LOGIN",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Signup",
                    style: TextStyle(
                      color: Colors.amber[700],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
