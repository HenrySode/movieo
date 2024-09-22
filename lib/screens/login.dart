import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/components/buttons.dart';
import 'package:movie_app/components/square_tile.dart';
import 'package:movie_app/components/text_field.dart';

class Login extends StatelessWidget {
  Login({super.key});

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  // void signUserIn() {
  //   Navigator.of(context).pushReplacementNamed('home');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Logo and title
                SizedBox(height: 50),
                Column(
                  children: [
                    //icon
                    Icon(
                      Icons.camera,
                      size: 80,
                    ),

                    //title
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'MOV',
                          style: GoogleFonts.montserrat(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.w800,
                            fontSize: 50,
                          ),
                        ),
                        Text(
                          'IEO',
                          style: GoogleFonts.montserrat(
                            color: Colors.red[800],
                            fontWeight: FontWeight.w800,
                            fontSize: 50,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 50),
                // Spacer(),
                //Welcome message
                Text(
                  'Welcome back',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 25),

                //User name
                TextFieldComponent(
                  controller: usernameController,
                  hintText: 'Username',
                  obsecureText: false,
                ),
                //password
                SizedBox(height: 15),

                TextFieldComponent(
                  controller: passwordController,
                  hintText: 'Password',
                  obsecureText: true,
                ),
                SizedBox(height: 10),
                //forgot password
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot password?',
                        style: TextStyle(color: Colors.grey[600]),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 25),
                //login
                ButtonComponent(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('main');
                  },
                  text: 'Sign In',
                ),

                SizedBox(height: 50),

                // Continue with social
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                //Google and facebook button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagePath: 'assets/icons/google.png'),
                    SizedBox(width: 10),
                    SquareTile(imagePath: 'assets/icons/facebook.png'),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                // Register option
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont't have an account?",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('register');
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(
                            color: Colors.red[800],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
