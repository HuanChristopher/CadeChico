import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class HistoriaPage extends StatefulWidget {
  const HistoriaPage({super.key});

  @override
  State<HistoriaPage> createState() => _LoginPage();
}

class _LoginPage extends State<HistoriaPage> {

AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _playMusic();
  }

  void _playMusic() async {
    await _audioPlayer.play(AssetSource('sounds/maracatu.mp3'),volume: 155.0, balance: 100.0, );
  }

  void _playMusic2() async {
    await _audioPlayer.play(AssetSource('sounds/plim.mp3'),volume: 155.0, balance: 100.0, );
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
                    
                  Container(height: 350,),
                  ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Color.fromARGB(255, 2, 171, 255),
                              backgroundColor: Color.fromARGB(255, 255, 255, 255),
                            ),
                        
                            onPressed: () {
                                _stopMusic();
                                _playMusic2;
                                Navigator.of(context).pushReplacementNamed('/tutorial01');   
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
            child: Image.asset('assets/imagens/chicoHistoria.png', fit: BoxFit.cover)),
          Container(color: Colors.black.withOpacity(0.3),),
          _body(),
        ]
      )
     );
  }
}