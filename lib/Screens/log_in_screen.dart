import 'package:flutter/material.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../constants/my_routes.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Opacity(
            opacity: 0.2,
            child: Image.network(
              "https://img.freepik.com/free-vector/box-with-money-charity-donation_24877-54483.jpg?w=2000",
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fill,
            ),
          ),
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.12,
                  ),
                  Image.asset(
                    "assets/images/donation.png",
                    height: MediaQuery.of(context).size.height * 0.25,
                  ),
                  GradientText(
                    "Donation",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                    colors: [Colors.red, Colors.indigo, Colors.orange],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: TextField(
                      cursorColor: Colors.orange,
                      decoration: InputDecoration(

                          border: GradientOutlineInputBorder(
                            gradient: LinearGradient(colors: [Colors.red,Colors.indigo, Colors.orange]),
                            width: 3,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          labelText: "phone no",
                          hintText: "enter your phone no",
                          fillColor: Colors.transparent,
                          filled: true),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          // gives the Gradient color
                          colors: [
                            Colors.red.withOpacity(0.9),
                            Colors.indigo.withOpacity(0.8),
                          ],
                        )),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent),
                        child: Text(
                          "log in",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dont have account?"),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed(MyRoutes.signUpScreenRoutes);
                            },
                          child: GradientText(
                            "SignUp",
                            style: TextStyle(fontSize: 20,),
                            colors: [Colors.red, Colors.indigo, Colors.orange],
                          ))
                    ],
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
