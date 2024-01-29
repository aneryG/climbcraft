import 'package:flutter/material.dart';

class SignUPPage extends StatefulWidget {
  SignUPPage({super.key});

  @override
  State<SignUPPage> createState() => _SignUPPageState();
}

class _SignUPPageState extends State<SignUPPage> {
  int _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Container(
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                height: 300,
                child: Image.asset("assets/images/pahad.png"),
              ),
              Container(
                height: 800,
                width: 500,
                decoration: BoxDecoration(
                  color: Color.fromARGB(97, 200, 122, 94),
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
                        Text("Sign Up",
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
                              //Name field
                              Text("Name",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey[700])),
                              const SizedBox(
                                height: 10,
                              ),
                              TextField(
                                obscureText: false,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  hintText: "Enter your Name Here",
                                  prefixIcon: const Icon(Icons.person),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(
                                    "Gender ",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.grey[700]),
                                  ),
                                  Radio(
                                    value: 1,
                                    groupValue: _selectedValue,
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedValue = value!;
                                      });
                                    },
                                  ),
                                  Text(
                                    "Male",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.grey[700]),
                                  ),
                                  Radio(
                                    value: 2,
                                    groupValue: _selectedValue,
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedValue = value!;
                                      });
                                    },
                                  ),
                                  Text(
                                    "Female",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.grey[700]),
                                  ),
                                ],
                              ),

                              // Padding(
                              //   padding: const EdgeInsets.all(8.0),
                              //   child: Row(
                              //     mainAxisAlignment: MainAxisAlignment.start,
                              //     children: <Widget>[
                              //       ListTile(
                              //         title: const Text('Male'),
                              //         leading: Radio(
                              //           value: 1,
                              //           groupValue: selectedOption,
                              //           onChanged: (value) {
                              //             setState(() {
                              //               selectedOption = value!;
                              //             });
                              //           },
                              //         ),
                              //       ),
                              //       ListTile(
                              //         title: const Text('Female'),
                              //         leading: Radio(
                              //           value: 2,
                              //           groupValue: selectedOption,
                              //           onChanged: (value) {
                              //             setState(() {
                              //               selectedOption = value!;
                              //             });
                              //           },
                              //         ),
                              //       ),
                              //     ],
                              //   ),
                              // ),
                              SizedBox(
                                height: 20,
                              ),
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
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
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
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  hintText: "**************",
                                  prefixIcon: const Icon(Icons.lock),
                                ),
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              //Confirm Password
                              Text("Confirm Password",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey[700])),
                              const SizedBox(
                                height: 10,
                              ),
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  hintText: "Re-Enter Password",
                                  prefixIcon: const Icon(Icons.lock),
                                ),
                              ),
                              SizedBox(
                                height: 20,
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
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                                      "Already have an account?  ",
                                      style: TextStyle(color: Colors.grey[500]),
                                    ),
                                    Text(
                                      "Login Up",
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
        ),
      ),
    );
  }
}
