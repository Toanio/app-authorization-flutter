import 'package:auth_page_flutter/widgets/auth/auth_widget.dart';
import 'package:auth_page_flutter/widgets/auth/foget_pass_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/auth': ((context) => const AuthWidget()),
        '/foget_pass':(context) =>const FogetPassWidget(),
      },
      initialRoute: '/auth',
    );
  }
}

