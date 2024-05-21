import 'package:flutter/material.dart';

class InicialPage extends StatefulWidget {
  const InicialPage({super.key});

  @override
  State<InicialPage> createState() => _LoginPage();
}

class _LoginPage extends State<InicialPage> {

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
                        
                          
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: const Color.fromARGB(255, 245, 247, 248),
                              backgroundColor: const Color.fromARGB(255, 31, 100, 255),
                            ),
                        
                            onPressed: () {
                                Navigator.of(context).pushReplacementNamed('/login');   
                            }, 
                            child: Text('INICIAR'), 
                          )
                        ],
                        ),
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