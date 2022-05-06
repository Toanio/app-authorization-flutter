import 'package:auth_page_flutter/widgets/auth/auth_widget.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';





class FogetPassWidget extends StatefulWidget {
  const FogetPassWidget({ Key? key }) : super(key: key);

  @override
  State<FogetPassWidget> createState() => _FogetPassWidgetState();
}

class _FogetPassWidgetState extends State<FogetPassWidget> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: const [
           _BackButton(),
          _ForgetPassText(),
          _SecondText(),
          _EmailTextField(),
          //_SendCodeButton(),
        ],

      ),
    );
  }
}

class _BackButton extends StatefulWidget {
  const _BackButton({ Key? key }) : super(key: key);

  @override
  State<_BackButton> createState() => BackButtonState();
}

class BackButtonState extends State<_BackButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 38, top: 68, right: 308.98),
      child:  SizedBox(
        width: 64,
        height: 45,
        child: OutlinedButton(
          onPressed: () { 
            Navigator.of(context).pop();
           },
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ) ,
          ),
          child: const Center(
            child:  Icon(
              Icons.arrow_back,
              color:  Color(0xFF1D68FF),),
          ),
        ),
      ),
    );
  }
}


class _ForgetPassText extends StatefulWidget {
  const _ForgetPassText({ Key? key }) : super(key: key);

  @override
  State<_ForgetPassText> createState() => __ForgetPassTextState();
}

class __ForgetPassTextState extends State<_ForgetPassText> {
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 40, 
      fontWeight: FontWeight.w700,
      color: Color(0xFF1D68FF),
      fontFamily: 'Poppins',
    );
    return const Padding(
      padding:  EdgeInsets.only(left: 35, top: 55, right: 311),
      child: SizedBox(
        width: 338,
        height: 60,
        child: Text( 
          'Forget Password',
          style: textStyle,
        ),
      ),
    );
  }
}

class _SecondText extends StatefulWidget {
  const _SecondText({ Key? key }) : super(key: key);

  @override
  State<_SecondText> createState() => __SecondTextState();
}

class __SecondTextState extends State<_SecondText> {
  
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 17, 
      fontWeight: FontWeight.w400,
      color: Color(0xFF1D68FF),
      fontFamily: 'Poppins',
    );
    return  Padding(
      padding: const EdgeInsets.only(left: 38, top: 15,),
      child: RichText(
        text: const TextSpan(
          text: 'To reset your password,\nPlease enter your ',
          style: textStyle,
          children: <TextSpan>[
            TextSpan(
              text: 'email adress or \nphone number',
              style:TextStyle(
                    fontSize: 17, 
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1D68FF),
                    fontFamily: 'Poppins',
              ),
            )
          ])
        ),
    );
  }
}

class _EmailTextField extends StatefulWidget {
  const _EmailTextField({ Key? key }) : super(key: key);

  @override
  State<_EmailTextField> createState() => __EmailTextFieldState();
}

class __EmailTextFieldState extends State<_EmailTextField> {
  final controlerOne = TextEditingController();
   Color borderColor =  const Color(0xFFE8EFFF);

  void _onTap() {
    String email = controlerOne.text;
    final bool isValid = EmailValidator.validate(email);
    if(isValid) {
      borderColor = const Color(0xFF18DAA3);
    }else {
      borderColor = Colors.red;
    }
    setState(() {
      
    });
  }
  
  @override
  Widget build(BuildContext context) {
    final borderStyle =  OutlineInputBorder(
      borderRadius:  BorderRadius.circular(15.0),
      borderSide: const BorderSide(
        color: Colors.white,
        )
      );
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 56,left: 35, right: 35),
          child:  SizedBox(
            width: 345,
            height: 57,
            child: TextField(
              controller: controlerOne,
              style: const TextStyle( 
                fontFamily: 'Poppins',
                color: Color(0xFF1D68FF),
                fontWeight: FontWeight.w500,
                fontSize: 14,),
              decoration: InputDecoration(
                fillColor: borderColor,
                filled: true,
                enabledBorder: borderStyle,
                focusedBorder: borderStyle,
                hintText: 'Enter your email',
                hintStyle:const TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xFF1D68FF),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                )
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35, right: 35, top:40),
          child: SizedBox(
            width: 344,
            height: 57,
            child: OutlinedButton(
              style: buttonStyle,
              onPressed: _onTap,
              child: const Text('Send Code'), 
        ),
      ),
    ),
      ],
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

// class _SendCodeButton extends StatefulWidget {
//   const _SendCodeButton({ Key? key }) : super(key: key);

//   @override
//   State<_SendCodeButton> createState() => __SendCodeButtonState();
// }

// class __SendCodeButtonState extends State<_SendCodeButton> {
 

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 35, right: 35, top:40),
//       child: SizedBox(
//         width: 344,
//         height: 57,
//         child: OutlinedButton(
//           style: buttonStyle,
//           onPressed: () {  },
//           child: const Text('Send Code'), 
//         ),
//       ),
//     );
//   }
// }