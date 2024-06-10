import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';



class InicialPage extends StatefulWidget {
  const InicialPage({super.key});

  @override
  State<InicialPage> createState() => _LoginPage();
}

class _LoginPage extends State<InicialPage> {

AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _playMusic();
  }

  void _playMusic() async {
    await _audioPlayer.play(AssetSource('sounds/maracatu_atomico.mp3'),volume: 155.0, balance: 100.0, );
  }

  void _stopMusic() async {
    await _audioPlayer.stop();
  }


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

                  ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Color.fromARGB(255, 2, 171, 255),
                              backgroundColor: Color.fromARGB(255, 255, 255, 255),
                            ),
                        
                            onPressed: () {
                                _stopMusic();
                                Navigator.of(context).pushReplacementNamed('/login');   
                            }, 
                            child: Text('INICIAR'), 
                          ),

                  Container(height: 20,),

                  Text(
                  textAlign: TextAlign.center,
                  'Desenvolvido por Huan Christopher\nProjeto de Mestrado em Informática Aplicada (UFRPE)', 
                  style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold)),

                  Container(height: 20,),

                  Text(
                  textAlign: TextAlign.center,
                  'SEM FINS LUCRATIVOS', 
                  style: TextStyle(fontSize: 20,color: Color.fromARGB(225, 242, 240, 240),
                  fontWeight: FontWeight.bold)),
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
          Container(color: Colors.blue),
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