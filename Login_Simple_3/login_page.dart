import 'package:flutter/material.dart';
import 'package:one_app/login_page.dart';
import 'package:one_app/sign_up_screan.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController emailController, passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('Assets/images/app_logo.jpg', fit: BoxFit.cover),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.blueAccent.shade100,
        ])),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            _buildHeader(),
            const SizedBox(height: 5),
            Expanded(child: _buildInputFields())
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome Back!",
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
          Text(
            "Login to continue",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 2),
          ),
        ],
      ),
    );
  }

  Widget _buildInputFields() {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60),
            topRight: Radius.circular(60),
          )),
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32),
            Column(
              children: [
                _buildTextField("Enter email here", emailController),
                const SizedBox(height: 16),
                _buildTextField("Password", passwordController, isPass: true),
              ],
            ),
            const SizedBox(height: 10),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password",
                  style: TextStyle(color: Colors.lightBlueAccent),
                )),
            const SizedBox(height: 5),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpPage()));
                },
                child: const Text(
                  "Don't have an account ? Sign Up",
                  style: TextStyle(color: Colors.lightBlueAccent),
                )),
            const SizedBox(height: 10),
            _buildButton("Login", Colors.lightBlueAccent, () {
              debugPrint("Email : ${emailController.text}");
              debugPrint("Password : ${passwordController.text}");
            }),
            const SizedBox(height: 10),
            const Text(
              "Or Login with",
              style: TextStyle(color: Colors.lightBlueAccent),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(child: _buildButton("Facebook", Colors.blue, () {})),
                const SizedBox(width: 32),
                Expanded(child: _buildButton("Google", Colors.red, () {})),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String hint, TextEditingController controller,
      {isPass = false}) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(color: Colors.grey))),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.grey),
            border: InputBorder.none),
        style: const TextStyle(color: Colors.black),
        obscureText: isPass,
      ),
    );
  }

  Widget _buildButton(String buttonText, Color color, Function()? onPressed) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          elevation: 2,
          backgroundColor: color,
          minimumSize: const Size.fromHeight(60),
        ),
        child: Text(buttonText,
            style: const TextStyle(fontSize: 16, color: Colors.white)));
  }
}

