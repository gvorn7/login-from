import 'package:flutter/material.dart';
import 'package:flutter_application_login/home_screen.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 195, 15),
        title: const Center(
            child: Text(
          "Log in",
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.yellow,
            Colors.black12,
          ],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/0/0b/Mahasarakham_University_Emblem.png",
                height: 180,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                // height: 300,
                // color: Colors.green,
                child: const Column(
              children: [
                Column(
                  children: [
                    Text(
                      "Welocme to",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 62, 57, 57),
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "MAHASRAKHAM UNIVERSITY",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 62, 57, 57),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //text field
                // SizedBox(
                //   height: 10,
                // ),
                Column(
                  children: [
                    Padding(
                      // padding: EdgeInsets.all(25),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                //  borderRadius: BorderRadius.all(w),

                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 90, 82, 82))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white10)),
                            fillColor: Color.fromARGB(255, 224, 221, 221),
                            filled: true,
                            hintText: "Student ID"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      // padding: EdgeInsets.all(25),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                //  borderRadius: BorderRadius.all(w),

                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 90, 82, 82))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white10)),
                            fillColor: Color.fromARGB(255, 224, 221, 221),
                            filled: true,
                            hintText: "Password"),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Forgot Password? "),
                Text(
                  "Reset Password",
                  style: TextStyle(
                      color: Color.fromARGB(255, 186, 45, 45),
                      fontWeight: FontWeight.bold),
                )
              ],
            )),
          const  SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
                onPressed: () {Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const HomeScreenPage()), (route) => false);},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 218, 240, 219),
                ),
                icon: Icon(Icons.login),
                label: Text("Log In")),
         const   Text(
              "Don\'t Have an Acouunt? ",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.normal),
            ),
          const   Text(
              "Sign up now",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
