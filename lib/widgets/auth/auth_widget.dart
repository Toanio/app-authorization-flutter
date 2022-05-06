import 'package:flutter/material.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({ Key? key }) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}
const hintStyle = TextStyle(
      fontFamily: 'Poppins',
      color: Color(0xFF1D68FF),
      fontWeight: FontWeight.w500,
      fontSize: 14,
    );

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: ListView(
        children: const[
          _HeaderWidget(),
          SizedBox(height: 60),
          _FormWidget(),
          _OtherLoginButton(),
          SizedBox(height: 60),
         _LowText(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 40, 
      fontWeight: FontWeight.w700,
      color: Color(0xFF1D68FF),
      fontFamily: 'Poppins',
    );
    return const Padding(
      padding: EdgeInsets.only(left: 37,top: 55),
      child:  Text(
        'Log In',
        style:textStyle,
      ),
    );
  }
}

final buttonStyle = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(const Color(0xFFE8EFFF)),
      foregroundColor: MaterialStateProperty.all(const Color(0xFF1D68FF)),
      shape: MaterialStateProperty.all(
         RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0)
       )
      ),
    );
final borderStyle =  OutlineInputBorder(
      borderRadius:  BorderRadius.circular(15.0),
      borderSide: const BorderSide(
        color: Colors.white,
        )
      );

class _FormWidget extends StatefulWidget {
  const _FormWidget({ Key? key }) : super(key: key);

  @override
  State<_FormWidget> createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  get onChanged => null;
  bool isChecked = false;

  String? errorText = null;
  final _loginTextController = TextEditingController();
  final _passTextController = TextEditingController();

  void _auth() {
    final login = _loginTextController.text;
    final password = _passTextController.text;

    if(login == 'admin' && password == 'admin') {
      errorText = null;
      print('okey you are enter');
    }else {
      errorText = 'Oh no! This is error!';
      print('show erorr');
    }
    setState(() {
      
    });

  }

  // void _resetPassword() {
  //   print('resset password');
  // }

  void _forgetPassword() {
    Navigator.of(context).pushNamed('/foget_pass');
  }

  @override
  Widget build(BuildContext context) {
     const  textStyle =  TextStyle(
      fontFamily: 'Poppins',
      fontSize: 18,
      fontWeight: FontWeight.bold
    ); 
    const hintStyle = TextStyle(
      fontFamily: 'Poppins',
      color: Color(0xFF1D68FF),
      fontWeight: FontWeight.w500,
      fontSize: 14,
    );
    final errorText = this.errorText;
    return Column(
      children:   [
        if(errorText != null) Text(errorText),
         SizedBox(
           width: 345,
           height: 57,
           child: TextField(
             controller: _loginTextController,
            decoration: InputDecoration(
              fillColor: const Color(0xFFE8EFFF),
              filled: true,
              enabledBorder: borderStyle,
              focusedBorder: borderStyle,
              hintText: 'Enter Email / Phone Number',
              hintStyle: hintStyle,
              ),
           ),
         ),
         const SizedBox(height: 20),
         SizedBox(
           width: 345,
           height: 57,
           child: TextField(
              controller: _passTextController,
              obscureText: true,
              decoration: InputDecoration(
                  fillColor: const Color(0xFFE8EFFF),
                  filled: true,
                  enabledBorder: borderStyle,
                  focusedBorder: borderStyle,
                  hintText: 'Password',
                  hintStyle: hintStyle,
                   ),
            ),   
          ),
          Align(
           alignment: Alignment.centerRight,
           child:  Padding(
             padding: const EdgeInsets.only(right: 34),
             child: TextButton(
                onPressed: _forgetPassword,
               child: const Text('Forget Password?'),
                ),
           ),
         ),
               CheckboxListTile(
                   controlAffinity: ListTileControlAffinity.leading,
                   contentPadding: const EdgeInsets.only(left: 34),
                   title: const Text('Remember Password',style: hintStyle,),
                   value: isChecked, 
                   onChanged: (bool? value) {
                     setState(() {
                        isChecked = value!;
                     });
                   },
                 ),
           
         const SizedBox(height: 100),
         SizedBox(
           width: 344,
           height: 57,
           child: ElevatedButton(
             onPressed: _auth, 
             style: buttonStyle,
             child: const Text(
               'Login',
               style: textStyle
               )
             ),
         ),
         const SizedBox(height:25),
         const Text('OR'),
         const SizedBox(height: 15),
      ],
    );
  }
}

class _OtherLoginButton extends StatefulWidget {
  const _OtherLoginButton({ Key? key }) : super(key: key);

  @override
  State<_OtherLoginButton> createState() => __OtherLoginButtonState();
}

class __OtherLoginButtonState extends State<_OtherLoginButton> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    const  textStyle =  TextStyle(
      fontFamily: 'Poppins',
      fontSize: 14,
      letterSpacing: 2.55,
      fontWeight: FontWeight.w600
    ); 
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Row(
             children: [
              SizedBox(
                width: 160,
                height: 51,
                child: ElevatedButton(
                  style: buttonStyle,
                  onPressed: () {},
                  child: const Text(
                    'GOOGLE',
                    style: textStyle,
                    )
                   ),
              ),
              const SizedBox(width: 21),
              SizedBox(
                width: 160,
                height: 51,
                child: ElevatedButton(
                  style: buttonStyle,
                  onPressed: () {}, 
                  child: const Text(
                    'FACEBOOK',
                    style: textStyle,)
                  ),
              )
             ],
           ),
        )
      ],
    );
  }
}

class _LowText extends StatelessWidget {
  const _LowText({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Center(
            child: 
            Text(
              'Don’t have an account? Let’s Register',
              style: hintStyle,)
              );
  }
}
