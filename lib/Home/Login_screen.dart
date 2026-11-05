import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 90),
              //<------------Header------------>
              Text('Welcome Back !',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              ),
              SizedBox(height: 8,),
              Text('Please Enter Your Personal Data',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              )
              ),
              SizedBox(height: 68,),
              //<------------Email------------>
              Text('Email',style: TextStyle(fontSize: 14, color: Colors.black)),
              SizedBox(height: 8,),

              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  hintStyle: TextStyle(
                    fontSize: 11,
                    color: Colors.black26,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 13,
                    vertical: 15,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              //<------------Password------------>
              SizedBox(height: 7,),
              //<------------Email------------>
              Text('Password',style: TextStyle(fontSize: 14, color: Colors.black)),
              SizedBox(height: 8,),

              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your Password',
                  hintStyle: TextStyle(
                    fontSize: 11,
                    color: Colors.black26,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 13,
                    vertical: 15,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              // Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 9,
                      color: Color(0xFF9470C8),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              // <-----------------Login Button-------------------->
              Container(
                width: double.infinity,
                height: 36,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF79E99A),
                      Color(0xFF55B66F),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.withOpacity(0.2),
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 17),

              // Divider
              Row(
                children: [
                  const Expanded(child: Divider(color: Colors.black)),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: Text(
                      'or sign in with',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Expanded(child: Divider(color: Colors.black)),
                ],
              ),

              const SizedBox(height: 15),
              // <----------------------Social Login Icons-------------------->
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook, color: Colors.black, size: 19),
                  const SizedBox(width: 35),
                  Icon(Icons.apple, color: Colors.black, size: 20),
                  const SizedBox(width: 35),
                  Icon(Icons.g_mobiledata, color: Colors.black, size: 25),
                ],
              ),

              const Spacer(),
              // <---------------------Sign Up---------------------->
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have any account? ",
                        style: TextStyle(
                          fontSize: 9,
                          color: Colors.black54,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF252535),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),


            ],
          ),
        )
    );
  }
}
