import 'package:authentication/features/Authentication/Register/UI/widgets/customElevatedButton.dart';
import 'package:authentication/features/Authentication/Register/UI/widgets/customPassword.dart';
import 'package:authentication/features/Authentication/Register/UI/widgets/custom_textField.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/Routes/pageRoutes.dart';
import '../../../../core/colors/AppColors.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical:30 ),
            child: ListView(
              children: [
                Image.asset("assets/images/logo.png",width: 100,height: 150,),
                Center(
                  child: Column(
                    children: [
                      Text("Welcome Back",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor
                        ),
                      ),
                      Text("Login to continue",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primaryColor
                        ),
                      ),
                    ]
                  )
                ),
                SizedBox(height: 70,),
                Form(
                     child: Column(
                         children: [
                           CustomTextField(label: "Email Address", hint: "Enter you Email"),
                           SizedBox(height: 18,),
                           CustomPassword(
                               label: "Password",
                               hint: "Enter you password",
                               suffixIcon: IconButton(
                                 onPressed: (){
                                   setState(() {
                                     _obscureText = !_obscureText;
                                   });
                                 },
                                 icon: Icon(
                                   _obscureText ? Icons.visibility_off : Icons.visibility,
                                   color: AppColors.primaryColor,
                                   size: 25,
                                 ),
                               ),
                               obscureText: _obscureText
                           ),
                           SizedBox(height: 12,),
                           Align(
                             alignment: Alignment.centerRight,
                             child: Text("Forget Password",
                               style: TextStyle(
                                   color: AppColors.primaryColor,
                                   fontSize: 20,
                                   fontWeight: FontWeight.w500
                               ),
                             ),
                           ),
                           SizedBox(height: 85,),
                           customElevatedButton(label: "Log In",onPressed: (){},),
                           SizedBox(height: 40,),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("Don’t have an account? ",
                                 style: TextStyle(
                                     fontSize: 18,
                                     fontWeight: FontWeight.w500
                                 ),),
                               GestureDetector(
                                 onTap: (){
                                   GoRouter.of(context).push(PagesRoute.init);
                                 },
                                 child: Text("Sign up now",
                                   style: TextStyle(
                                       fontSize: 18,
                                       fontWeight: FontWeight.w500,
                                       color: AppColors.primaryColor
                                   ),
                                 ),
                               )
                             ],
                           )
                         ],
                     )
                ),
              ],
                  ),
            ),
          )
    );
  }
}
