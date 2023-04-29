import 'package:flutter/material.dart';
import '../Customs/custom_TextField.dart';
import '../Customs/custom_button.dart';
import '../const.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  TextEditingController? nameController = new TextEditingController();
  TextEditingController? phoneController = new TextEditingController();
  TextEditingController? emailController = new TextEditingController();
  TextEditingController? passwordController = new TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kpraimaryColor,
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/images/picture.jpg',
                height: 100,
              ),
              const Center(
                child: Text(
                  'Sign up',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Pacifico',
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 8,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Custom_TextField(
                text: 'Name',
                icoon: const Icon(Icons.person_2_outlined),
                keybor: TextInputType.text,
                obscur: false,
                controller: nameController,
                validator: nameValidator, 
              ),
              const SizedBox(
                height: 10,
              ),
              Custom_TextField(
                text: 'Phone Number',
                icoon: const Icon(Icons.settings_phone_sharp),
                keybor: TextInputType.phone,
                obscur: false,
                controller: phoneController,
                validator: phoneNumberValidator,
              ),
              const SizedBox(
                height: 10,
              ),
              Custom_TextField(
                text: 'Email',
                icoon: const Icon(Icons.mail_outline_rounded),
                keybor: TextInputType.emailAddress,
                obscur: false,
                controller: emailController,
                validator: emailValidator, 
              ),
              const SizedBox(
                height: 10,
              ),
              Custom_TextField(
                text: 'Password',
                icoon: const Icon(Icons.password_sharp),
                iconPass: const Icon(Icons.remove_red_eye_sharp),
                obscur: true,
                controller: passwordController, 
                validator: passwordValidator,
              ),
              const SizedBox(
                height: 15,
              ),
              Custom_button(
                text1: 'Sign up',
                onTap: _formValidate,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have account?  ",
                    style: TextStyle(color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.amber[500],
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
                        decorationColor: Colors.black26,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _formValidate() {
    if (_formKey.currentState!.validate()) {
      print('Name is: ${nameController!.text}');
      print('Email is: ${emailController!.text}');
      print('Phone is: ${phoneController!.text}');
      print('Password is: ${passwordController!.text}');
    }
  }

  String? nameValidator(nameController) {
   
    if (nameController!.isEmpty) {
      return "Can't be Empty";
    } else {
      return null;
    }
  }

  String? emailValidator(emailController) {
    
    if (emailController!.isEmpty) {
      return 'Enter your Email';
    } else {
      return null;
    }
  }

  String? phoneNumberValidator(phoneController) {
    
    if (phoneController!.isEmpty) {
      return 'Enter your Phone Number';
    } else {
      return null;
    }
  }

  String? passwordValidator(passwordController) {
    if (passwordController!.length<9 && passwordController!.length>1 ) {
      return 'your Password is short';
    } 
    else if (passwordController!.isEmpty){
      return 'Enter your Password ,Please !';
    }
    else {
      return null;
    }
  }
}
