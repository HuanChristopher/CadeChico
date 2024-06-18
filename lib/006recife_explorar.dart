
import 'package:flutter/material.dart';
import 'package:cadechico/app_controller.dart';
import 'package:provider/provider.dart';
import 'time_provider.dart';
import 'package:audioplayers/audioplayers.dart';

class RecifeExplorarPage extends StatefulWidget{
  @override
  State<RecifeExplorarPage> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<RecifeExplorarPage> {
  int counter = 0;
  AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _playMusic();
  }

  void _playMusic() async {
    await _audioPlayer.play(AssetSource('sounds/intro.mp3'),volume: 155.0, balance: 100.0, );
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
        title: Text('ANDANDO POR RECIFE', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold)), 
        
      ),
      body: SizedBox( 
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           
            Text(
              context.watch<TimeProvider>().formattedTime,
              style: TextStyle(fontFamily: 'Xilosa',
                fontSize: 20,
                color: Color.fromARGB(255, 31, 100, 255)),
            ),
            Text(
              context.watch<TimeProvider>().formattedDay,
              style: TextStyle(fontFamily: 'Xilosa',
                fontSize: 20,
                color: Color.fromARGB(255, 31, 100, 255)),
            ),

            SizedBox(height: 10),

            Column(
              children: [
                MaterialButton(
                                 
                                    onPressed: () {
                                        context.read<TimeProvider>().addTwoHours();
                                         if(GlobalVariables.isGameOver){
                                            _audioPlayer.stop();
                                            Navigator.pushNamed(context, '/gameover'); 
                                      } else {
                                        _audioPlayer.stop();
                                        Navigator.of(context).pushReplacementNamed('/recife_saoluiz');  } 
                                    }, 
                                    child: Image.asset('assets/imagens/01.recifeSaoLuiz.png', fit: BoxFit.cover, width: 180, height: 130,), 
                                  ),
                Text('Cinema São Luiz', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold),),
              ],
            ),

            Container(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

              Column(
                children: [
                  MaterialButton(
                             
                                onPressed: () {
                                    context.read<TimeProvider>().addThreeHours();
                                     if(GlobalVariables.isGameOver){
                                        _audioPlayer.stop();
                                        Navigator.pushNamed(context, '/gameover'); 
                                      } else {
                                        _audioPlayer.stop();
                                        Navigator.of(context).pushReplacementNamed('/recife_conceicao');   }
                                }, 
                                child: Image.asset('assets/imagens/01.recifeConceicao.png', fit: BoxFit.cover, width: 180, height: 130,), 
                              ),

                               SizedBox(height: 10),

                               Text('Morro da Conceição', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold),),
                ],
              ),

              Column(
                children: [
                  MaterialButton(
                                
                                onPressed: () {
                                    context.read<TimeProvider>().addFourHours();
                                     if(GlobalVariables.isGameOver){
                                        _audioPlayer.stop();
                                        Navigator.pushNamed(context, '/gameover'); 
                                      } else {
                                        _audioPlayer.stop();
                                        Navigator.of(context).pushReplacementNamed('/recife_ufrpe');   }
                                }, 
                                child: Image.asset('assets/imagens/01.recifeTorre.png', fit: BoxFit.cover, width: 130, height: 90,), 
                              ),
                  SizedBox(height: 10),

                  Text('UFRPE', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold,),),
                ],
              ),


              ],),
            
            Container(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

              Column(
                children: [
                  MaterialButton(
                             
                                onPressed: () {
                                    _audioPlayer.stop();
                                    Navigator.of(context).pushReplacementNamed('/viagem01');   
                                }, 
                                child: Image.asset('assets/icones/map-marker.png', fit: BoxFit.cover, width: 50, height: 50,), 
                              ),

                               SizedBox(height: 10),

                               Text('VIAJAR', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold),),
                ],
              ),

              Column(
                children: [
                  MaterialButton(
                                
                                onPressed: () {
                                    _audioPlayer.stop();   
                                    Navigator.pushNamed(context, '/recife'); 
                                }, 
                                child: Image.asset('assets/icones/voltar.png', fit: BoxFit.cover, width: 50, height: 50,), 
                              ),
                  SizedBox(height: 10),

                  Text('VOLTAR', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold,),),
                ],
              ),

              Column(
                children: [
                  MaterialButton(
                               
                                onPressed: () {
                                    _audioPlayer.stop();
                                    Navigator.of(context).pushReplacementNamed('/pitaco');   
                                }, 
                                child: Image.asset('assets/icones/comment.png', fit: BoxFit.cover, width: 50, height: 50,), 
                              ),
                  SizedBox(height: 10),

                  Text('PITACO', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold),),
                ],
              ),

              

              ],)
          ],
        ),
      ),
       
    );
  }

}


class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
          value: AppController.instance.isDarkTheme,
          onChanged: (value) {
              AppController.instance.changeTheme();
            });
  }
}