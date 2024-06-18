
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'time_provider.dart';

class Viagem05Page extends StatefulWidget{
  @override
  State<Viagem05Page> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<Viagem05Page> {
  AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _playMusic();
  }

  void _playMusic() async {
    await _audioPlayer.play(AssetSource('sounds/auto01.mp3'),volume: 155.0, balance: 100.0, );
  }

  void _playMusic2() async {
    await _audioPlayer.play(AssetSource('sounds/plim.mp3'),volume: 155.0, balance: 100.0, );
  }

 void _stopMusic() async {
    await _audioPlayer.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SizedBox(
        child: Drawer(  
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset('assets/imagens/huan.jpg'),),
                  accountName: Text('Huan Lima'), 
                  accountEmail: Text('huan.lima@ufrpe.br')),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Inicio'),
                subtitle: Text('Tela de Inicio'),
                onTap: () {
                  print('home');
                }
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Sair'),
                onTap: () {
                  _audioPlayer.stop();
                  Navigator.of(context).pushReplacementNamed('/login');
                }
              )
            ],
            )
        ),
      ),
      appBar: AppBar(
        title: Text('VIAJAR', style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold)), 
        
      ),
      body: Container( 
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                context.watch<TimeProvider>().formattedTime,
                style: TextStyle( fontFamily: 'Xilosa',
                fontSize: 20,
                color: Color.fromARGB(255, 31, 100, 255),
            ),),
            Text(
                context.watch<TimeProvider>().formattedDay,
                style: TextStyle( fontFamily: 'Xilosa',
                fontSize: 20,
                color: Color.fromARGB(255, 31, 100, 255),
            ),),

            SizedBox(height: 20),
           
            Container(
            //height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/imagens/mapa05.png', fit: BoxFit.cover)),

            Container(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

              Column(
                children: [
                  MaterialButton(
                             
                    onPressed: () {
                        context.read<TimeProvider>().addEightHours();
                         if(GlobalVariables.isGameOver){
                                   _audioPlayer.stop();
                                    Navigator.pushNamed(context, '/gameover'); 
                               } else {
                                _audioPlayer.stop();
                                 _playMusic2();
                                Navigator.pushNamed(context, '/recife');}
                      
                    }, 
                    child: Image.asset('assets/cidades/recife.png', fit: BoxFit.cover, width: 70, height: 50,), 
                  ),

                  SizedBox(height: 10),

                  Text('Recife', textAlign: TextAlign.center, style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold),),
                ],
              ),

              Column(
                children: [
                  MaterialButton(
                                
                                onPressed: () {
                                  context.read<TimeProvider>().addSixHours();
                                   if(GlobalVariables.isGameOver){
                                       _audioPlayer.stop();
                                        Navigator.pushNamed(context, '/gameover'); 
                                      } else {
                                        _audioPlayer.stop();
                                         _playMusic2();
                                        Navigator.pushNamed(context, '/vitoria');}
                                     
                                }, 
                                child: Image.asset('assets/cidades/vitoria.png', fit: BoxFit.cover, width: 70, height: 50,), 
                              ),
                  SizedBox(height: 10),

                  Text('Vitória de\nSanto Antão', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold,),),
                ],
              ),

              Column(
                children: [
                  MaterialButton(
                               
                                onPressed: () {
                                  context.read<TimeProvider>().addSixHours();
                                   if(GlobalVariables.isGameOver){
                                       _audioPlayer.stop();
                                        Navigator.pushNamed(context, '/gameover'); 
                                      } else {
                                        _audioPlayer.stop();
                                         _playMusic2();
                                        Navigator.pushNamed(context, '/caruaru');}
                                    
                                }, 
                                child: Image.asset('assets/cidades/caruaru.jpg', fit: BoxFit.cover, width: 70, height: 50,), 
                              ),
                  SizedBox(height: 10),

                  Text('Caruaru', textAlign: TextAlign.center, style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold),),
                ],

                
              ),

              

              ],
              
            ),

            Container(height: 60,),

            MaterialButton(
                            
                onPressed: () {
                  _audioPlayer.stop();
                  Navigator.pushNamed(context, '/salgueiro');
                   
                }, 
                child: Image.asset('assets/icones/voltar.png', fit: BoxFit.cover, width: 50, height: 50,), 
            ),
            
          ],
        ),
      ),
       
    );
  }

}