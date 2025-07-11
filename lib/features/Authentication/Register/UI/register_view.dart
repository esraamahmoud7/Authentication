import 'package:authentication/core/colors/AppColors.dart';
import 'package:authentication/features/Authentication/Register/UI/widgets/customElevatedButton.dart';
import 'package:authentication/features/Authentication/Register/UI/widgets/customPassword.dart';
import 'package:authentication/features/Authentication/Register/UI/widgets/custom_textField.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/Routes/pageRoutes.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
          child: ListView(
            children: [
              Image.asset("assets/images/logo.png",width: 100,height: 150,),
              Center(
                child: Text("Create An Account",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor
                  ),
                ),
              ),
              SizedBox(height: 48,),
              Form(
                  child: Column(
                    children: [
                      const CustomTextField(label: "Name",hint: 'Enter your name',),
                      const CustomTextField(label: "Email",prefixIcon: Icon(Icons.email_outlined,color: AppColors.primaryColor,size: 25,),hint: 'Enter your email',),
                      CustomPassword(label: "Password",
                        hint: 'Enter your Password',
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
                        ), obscureText: _obscureText,
                      ),
                      CustomPassword(label: "Confirm Password",
                        hint: 'Confirm your Password',
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
                        ), obscureText: _obscureText,

                      ),
                      SizedBox(height: 50,),
                      customElevatedButton(
                        onPressed: (){
                        GoRouter.of(context).push(PagesRoute.login);

                      },),
                      SizedBox(height: 24,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Have an account already?  ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                            ),),
                          GestureDetector(
                            onTap: (){
                              GoRouter.of(context).push(PagesRoute.login);
                            },
                            child: Text("Log in",
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

              )
            ],
          ),
        ),
      ),
    );
  }
}
