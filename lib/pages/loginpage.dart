import 'package:flutter/material.dart';
import 'package:input/components/my_textfileds.dart';
import 'package:input/components/mybutton.dart';
import 'package:input/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {
    print('Sign in');
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // logo
                SizedBox(height: screenHeight / 20),
                const Icon(
                  Icons.lock,
                  size: 100,
                ),

                // Title Text
                SizedBox(height: screenHeight / 20),
                Text(
                  'Welcome back you\'ve been missed',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 18,
                  ),
                ),

                SizedBox(height: screenHeight / 30),

                // username textfields
                MyTextfields(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),

                SizedBox(height: screenHeight / 40),

                // password text fields
                MyTextfields(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                SizedBox(height: screenHeight / 40),

                // forgot password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: screenHeight / 20),

                // sign in button
                MyBotton(
                  onTap: signUserIn,
                ),

                SizedBox(height: screenHeight / 30),

                // or continue with

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
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

                SizedBox(height: screenHeight / 20),

                // google + apple sign in button

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    // google
                    SquareTile(imagePath: 'lib/images/google.png'),

                    SizedBox(width: 10),

                    // apple
                    SquareTile(imagePath: 'lib/images/apple.png'),
                  ],
                ),

                SizedBox(height: screenHeight / 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      'Register now',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

                // not a member? register now
              ],
            ),
          ),
        ),
      ),
    );
  }
}
