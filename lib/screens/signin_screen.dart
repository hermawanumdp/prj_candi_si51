import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  //TODO 1 : Variabel
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  String _errorText = "";

  bool _isSignedIn = false;

  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //TODO 2 : APPBAR
        appBar: AppBar(
          title: Text('Sign In'),
        ),
        //TODO 3 : Body
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Form(
                  child: Column(
                //TODO 4 : Alignment
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //TODO 5 : namapengguna
                  TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                        labelText: "Nama Pengguna",
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //TODO 6 : password
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                        labelText: "Kata Sandi",
                        errorText: _errorText.isNotEmpty ? _errorText : null,
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                            icon: Icon(_obscurePassword
                                ? Icons.visibility_off
                                : Icons.visibility))),
                    obscureText: _obscurePassword,
                  ),
                  //TODO 7 : Button
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Sign In')),
                  //TODO 8 : TextButton Sign Up
                  // TextButton(
                  //     onPressed: () {},
                  //     child: Text('Belum punya akun, Daftar disini.')),
                  RichText(
                    text: TextSpan(
                        text: 'Belum punya Akun?',
                        style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            fontSize: 16),
                        recognizer: TapGestureRecognizer()..onTap = () {}),
                  ),
                ],
              )),
            ),
          ),
        ));
  }
}
