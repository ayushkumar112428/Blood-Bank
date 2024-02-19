import 'package:bloodbank/Screens/home_page.dart';
import 'package:bloodbank/auth/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1.3),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      "Log in",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: _email,
                      cursorColor: Colors.grey,
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                          hintText: "Enter a email",
                          label: const Text("Your Email"),
                          labelStyle: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 20,
                          )),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: _password,
                      cursorColor: Colors.grey,
                      obscureText: _isObscure,
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                          hintText: "Enter a password",
                          label: const Text("Password"),
                          labelStyle: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 20,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(_isObscure
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                          )),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forget Password ?",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1.3),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Center(
                          child: Text("Log in",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25),),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Center(
                        child: Text(
                      "Or Log in with social account",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    )),
                    const SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 45,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icons/google.webp",height: 28,width: 28,),
                              const SizedBox(width: 5,),
                              const Text("Google",style: TextStyle(fontSize: 20),)
                            ],
                          ),
                        ),
                        const SizedBox(width: 16,),
                        Container(
                          height: 45,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icons/facebook.webp",height: 28,width: 28,),
                              const SizedBox(width: 5,),
                              const Text("Facebook",style: TextStyle(fontSize: 20),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  bottom: 25,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: "By signing up you agree to our ",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(
                          text: "terms of use",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: "\nand ",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: "privacy policy",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
