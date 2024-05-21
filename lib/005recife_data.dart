import 'package:flutter/material.dart';

class RecifeDataPage extends StatefulWidget {
  const RecifeDataPage({super.key});

  @override
  State<RecifeDataPage> createState() => _LoginPage();
}

class _LoginPage extends State<RecifeDataPage> {

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
                  Container(height: 350,),
                  
                  Text('RECIFE', 
                            style: TextStyle(
                            fontSize: 40,
                            //fontWeight: FontWeight.bold,
                            foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 6
                          ..color = const Color.fromARGB(255, 31, 100, 255)
                          ),
                          ),

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
                                Navigator.of(context).pushReplacementNamed('/recife');   
                            }, 
                            child: Text('VOLTAR'), 
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
            child: Image.asset('assets/imagens/01.recife01.png', fit: BoxFit.cover)),
          Container(color: Colors.black.withOpacity(0.3),),
          _body(),
        ]
      )
     );
  }
}