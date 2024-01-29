import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(140, 164, 119, 103),
      body: Container(
        child: Column(children: [
          Container(
            height: 300,
          ),
          Container(
            height: 632,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Log In",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54)),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Email Field
                          Text("Email",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.grey[700])),
                          const SizedBox(
                            height: 10,
                          ),
                          TextField(
                            obscureText: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              hintText: "abc123@gmail.com",
                              prefixIcon: const Icon(Icons.mail_outline),
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          //Password
                          Text("Password",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.grey[700])),
                          const SizedBox(
                            height: 10,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              hintText: "**************",
                              prefixIcon: const Icon(Icons.lock),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(
                              top: 20,
                            ),
                            child: GestureDetector(
                              child: Center(
                                child: Container(
                                  height: 50,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color.fromARGB(
                                          255, 195, 148, 131)),
                                  child: Center(
                                      child: Text(
                                    "Submit",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 70),
                            child: Row(
                              children: [
                                Text(
                                  "Don't have an account?  ",
                                  style: TextStyle(color: Colors.grey[500]),
                                ),
                                Text(
                                  "Sign Up",
                                  style: TextStyle(color: Colors.blue[700]),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ]),
      ),
    );
  }
}
