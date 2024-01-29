import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:greengrocer/src/auth/components/custom_text_field.dart';
import 'package:greengrocer/src/config/custom_colors.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // App Name
                Text.rich(
                  TextSpan(
                    style: const TextStyle(
                      fontSize: 40,
                    ),
                    children: [
                      const TextSpan(
                        text: 'Green',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'grocer',
                        style: TextStyle(
                          color: CustomColors.customContrastColor,
                        ),
                      )
                    ],
                  ),
                ),

                // Categories
                SizedBox(
                  height: 30,
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                    child: AnimatedTextKit(
                      pause: Duration.zero,
                      animatedTexts: [
                        FadeAnimatedText('Frutas'),
                        FadeAnimatedText('Verduras'),
                        FadeAnimatedText('Legumes'),
                        FadeAnimatedText('Carnes'),
                        FadeAnimatedText('Cereais'),
                        FadeAnimatedText('Laticíneos'),
                      ],
                      repeatForever: true,
                    ),
                  ),
                )
              ],
            ),
          ),

          // Login Form
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 40,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(45),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Email
                const CustomTextField(
                  label: 'Email',
                  icon: Icons.email,
                ),

                // Senha
                const CustomTextField(
                  icon: Icons.lock,
                  label: 'Senha',
                  isSecret: true,
                ),

                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      backgroundColor: Colors.green,
                    ),
                    child: const Text(
                      'Entrar',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Esqueceu a Senha?',
                      style: TextStyle(
                        color: CustomColors.customContrastColor,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(
                            90,
                          ),
                          thickness: 2,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text('Ou'),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(
                            90,
                          ),
                          thickness: 2,
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 50,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      side: const BorderSide(
                        width: 2,
                        color: Colors.green,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Criar Conta',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
