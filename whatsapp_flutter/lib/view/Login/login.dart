import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/view/componentes/espaco.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        color: Color(0xff075E54),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    "imagens/icon.png",
                    width: 200,
                    height: 150,
                  ),
                  espaco(30),
                  textEmail(),
                  espaco(20),
                  textSenha(),
                  espaco(30),
                  buttonLogin()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget textEmail() {
    return TextFormField(
      autofocus: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: "E-mail",
          contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );
  }

  Widget textSenha() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: "Senha",
          contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );
  }

  Widget buttonLogin() {
    return TextButton(
      style: TextButton.styleFrom(
          primary: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
          padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
          backgroundColor: Colors.green),
      onPressed: () {},
      child: Text('Entrar'),
    );
  }
}
