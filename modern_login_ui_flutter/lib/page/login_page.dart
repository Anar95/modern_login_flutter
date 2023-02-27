import 'package:flutter/material.dart';
import 'package:modern_login_ui_flutter/components/my_button.dart';
import 'package:modern_login_ui_flutter/components/square_tile.dart';

import '../components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //Text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // Sign user in metod

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      
      body: Container(
       // decoration: const BoxDecoration(
       // image: DecorationImage(
           // image: AssetImage("assets/images/Mask_groupa.png"),
            //colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.4), BlendMode.modulate),
            //fit: BoxFit.cover),),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              //Logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 100),

              //Welcome back,
              const Text(
                'Tekrar hoşgeldin, özlendin reis!',
                style: TextStyle(
                  color: Colors.black,fontWeight:FontWeight.bold,
                  fontSize: 22,
                ),
              ),

              const SizedBox(height: 35),

              //Username textfield

              MyTextField(
                controller: usernameController,
                hintText: 'Kullanıcı Adı Giriniz',
                obscureText: false,
              ),

              const SizedBox(height: 15),

              //Password textfield

              MyTextField(
                controller: passwordController,
                hintText: 'Şifre Giriniz',
                obscureText: true,
              ),
              const SizedBox(height: 15),

              //Forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Şifreyimi Unutdun?',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              //Sign in button
              MyButton(
                onTap: signUserIn,
              ),
              const SizedBox(height: 50),

              //Or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Aşağıdakılar ile devam edin',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              //Google + apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  //google button
                  SquareTile(imagePath: 'assets/images/google-logo.png'),

                  SizedBox(width: 30 ),

                  //apple button

                  SquareTile(imagePath: 'assets/images/apple-logo.png'),
                ],
              ),
              const SizedBox(height: 25),
              //Not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Üye Değilmisin?',
                  style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Şimdi Üye Ol',
                  style: TextStyle(
                  color: Colors.blue, fontWeight:FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
