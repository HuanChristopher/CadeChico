
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'time_provider.dart';


class Tutorial02Page extends StatefulWidget{
  @override
  State<Tutorial02Page> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<Tutorial02Page> {
  AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _playMusic();
  }
  
 

  void _playMusic() async {
    await _audioPlayer.play(AssetSource('sounds/intro.mp3'),volume: 55.0, balance: 100.0, );
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
                  accountName: Text('Huan Lima', style: TextStyle(color: Colors.black),), 
                  accountEmail: Text('huan.lima@ufrpe.br',style: TextStyle(color: Colors.black))),
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
        title: Text('TUTORIAL', style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 31, 100, 255), fontWeight: FontWeight.bold)), 
        
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

            SizedBox(height: 20),

             ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Color.fromARGB(255, 2, 171, 255),
                              backgroundColor: Color.fromARGB(255, 255, 255, 255),
                            ),
                        
                            onPressed: () {
                                _stopMusic();
                                Navigator.of(context).pushReplacementNamed('/tutorial03');   
                            }, 
                            child: Text('CONTINUAR'), 
                          ),

            SizedBox(height: 20),
           
            Container(
            //height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/imagens/tutorial01.png', fit: BoxFit.cover)),
  
            Text(
            textAlign: TextAlign.center,
            'Abaixo você poderá ver a opção Explorar e assim andar por locais do município em busca de informações. Cada interação, custará algumas horas.', 
            style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 31, 100, 255),
            fontWeight: FontWeight.bold
            )
            ), 


            Container(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

              Column(
                children: [
                  MaterialButton(
                                
                                onPressed: () {
                                       
                                }, 
                                child: Image.asset('assets/icones/map-marker.png', fit: BoxFit.cover, width: 50, height: 50,), 
                              ),

                               SizedBox(height: 10),

                             
                               Text('VIAJAR', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold),),
                ],
              ),

              Column(
                children: [
                  
                 
                  ElevatedButton(
                      onPressed: () {
                          
                        
                      }, 
                      child: Image.asset('assets/icones/building2.png', fit: BoxFit.cover, width: 50, height: 50,), 
                   ),
                  SizedBox(height: 10),

                  Text('EXPLORAR',textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 248, 42, 5),fontWeight: FontWeight.bold,),),
                ],
              ),

              Column(
                children: [
                  MaterialButton(
                               
                                onPressed: () {
                                   
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

