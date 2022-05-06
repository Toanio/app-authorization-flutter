import 'package:flutter/material.dart';
import 'package:auth_page_flutter/widgets/buttons/back_button.dart';

class VerifyWidget extends StatefulWidget {
  const VerifyWidget({ Key? key }) : super(key: key);

  @override
  State<VerifyWidget> createState() => _VerifyWidgetState();
}

class _VerifyWidgetState extends State<VerifyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: const [
          _BackButton(),
          _VerifyCodeText(),
          Center(child: _EditCode()),
         


        ],
      ) ,
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


class _VerifyCodeText extends StatelessWidget {
  const _VerifyCodeText({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyleBig = TextStyle(
      fontSize: 40, 
      fontWeight: FontWeight.w700,
      color: Color(0xFF1D68FF),
      fontFamily: 'Poppins',
    );
    const textStyleSmall = TextStyle(
      fontSize: 17, 
      fontWeight: FontWeight.w400,
      color: Color(0xFF1D68FF),
      fontFamily: 'Poppins',
    );
    return Column(
      children: const[
        SizedBox(
          width: 338,
          height: 60,
            child: Text( 
              'Verify Code',
              style: textStyleBig,
            ),
          ),
        SizedBox(
          width: 338,
            height: 60,
            child: Text( 
              'Please, check your email. We ve sent you the code at AddTestMail@ ',
              style: textStyleSmall,
            ),
        ),
      ],
    );
  }
}

class _EditCode extends StatefulWidget {
  const _EditCode({ Key? key }) : super(key: key);

  @override
  State<_EditCode> createState() => __EditCodeState();
}

class __EditCodeState extends State<_EditCode> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 41),
      child: Row(
        children: [
           _codeField(),
          const SizedBox(width: 12),
          _codeField(),
          const SizedBox(width: 12),
         _codeField(),
          const SizedBox(width: 12),
          _codeField(),
        ],
      ),
    );
  }

  SizedBox _codeField() {
    return const SizedBox(
        width: 70,
        child: TextField(
          textInputAction: TextInputAction.next,
          maxLength: 1,
          decoration: InputDecoration(
          counterText: ''
            ),
          textAlign:TextAlign.center,
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      );
  }
}