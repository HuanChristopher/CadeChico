import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {

String email = '';
String senha = '';

Widget _body(){
  return Column (
        children: [
          SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      child: Image.asset('assets/imagens/logocade2.png'),
                    ),
                  Container(height: 20,),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 12),
                      child: Column(
                        children: [
                          TextField(
                      onChanged: (text) {
                        email = text;
                      },
                      keyboardType:TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'E-mail',
                        border: OutlineInputBorder()
                      ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                      onChanged: (text) {
                        senha = text;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        border: OutlineInputBorder()
                      ),
                           ),
                          SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 245, 247, 248),
                      backgroundColor: const Color.fromARGB(255, 31, 100, 255),
                    ),
                
                    onPressed: () {
                      if(email == 'huan.lima@ufrpe.br' && 
                          senha == 'ufrpe') {
                        Navigator.of(context).pushReplacementNamed('/historia');
                      } else {
                        print('e-mial ou senha inválidos');
                      }
                    }, 
                    child: Text('Entrar'), 
                  )
                        ],),
                    )
                  ),
                  
                ],
              ),
            ),
          ),  
        ),
       ],
      );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.green),
          Container(
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/imagens/backgroundAzul.jpg', fit: BoxFit.cover)),
          Container(color: Colors.black.withOpacity(0.3),),
          _body(),
        ]
      )
     );
  }
}