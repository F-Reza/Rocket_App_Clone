import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = 'login';
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObscureText = true;
  final formKey = GlobalKey<FormState>();
  String errMsg = '';

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8c3494),
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //const SizedBox(height: 20,),
                  Image.asset('images/logo.png', width: 210,),
                  const SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(bottom: 4.0),
                        child: Text('Mobile No',style: TextStyle(color: Colors.white),),
                      ),
                    ],
                  ),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'Mobile No',
                        hintStyle: const TextStyle(color: Colors.grey),
                        prefixIcon: const Icon(Icons.person_pin)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Mobile must not be empty!';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(bottom: 4.0),
                        child: Text('PIN',style: TextStyle(color: Colors.white),),
                      ),
                    ],
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: isObscureText,
                    decoration: InputDecoration(
                        filled: true,
                      fillColor: Colors.white,
                      //filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'PIN',
                        hintStyle: const TextStyle(color: Colors.grey),
                        prefixIcon: const Icon(Icons.key),
                        suffixIcon: IconButton(
                          icon: Icon(isObscureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                        )),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'PIN must not be empty!';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 20,),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, HomePage.routeName);
                    },
                    child: Container(
                      width: double.maxFinite,
                      height: 55,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        //color: Colors.lightBlue,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child:  ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('LOG IN',
                              style: TextStyle(color: Color(0xFF8c3494),),
                            ),
                          ],
                        ),
                        trailing: const Icon(Icons.arrow_forward, color: Color(0xFF8c3494),),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  TextButton(
                      onPressed: () {
                        //
                      },
                      child: const Text('Forgot Rocket PIN?',
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                  ),
                  const SizedBox(height: 10,),
                  InkWell(
                    onTap: () {
                      //
                    },
                    child: Container(
                      width: double.maxFinite,
                      height: 55,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        //color: Colors.lightBlue,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: ListTile(
                        onTap: () {

                        },
                        title: Image.asset('images/index.png',height: 35,),
                        trailing: const Icon(Icons.arrow_forward, color: Color(0xFF8c3494),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
