import 'package:cadechico/time_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GameOverPage extends StatefulWidget{
  @override
  State<GameOverPage> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<GameOverPage> {

  

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
                  ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Color.fromARGB(255, 2, 171, 255),
                              backgroundColor: Color.fromARGB(255, 255, 255, 255),
                            ),
                        
                            onPressed: () {
                                context.read<TimeProvider>().zeroGame();
                                Navigator.of(context).pushReplacementNamed('/historia');   
                            }, 
                            child: Text('CONTINUAR'), 
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
            child: Image.asset('assets/imagens/gameover.png', fit: BoxFit.cover)),
          Container(color: Colors.black.withOpacity(0.3),),
          _body(),
        ]
      )
     );
  }
}