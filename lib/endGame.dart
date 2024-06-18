
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'time_provider.dart';
import 'package:audioplayers/audioplayers.dart';

class endGamePage extends StatefulWidget{
  @override
  State<endGamePage> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<endGamePage> {
  int counter = 0;
 AudioPlayer _audioPlayer = AudioPlayer();

   @override
  void initState() {
    super.initState();
    _playMusic();
  }

  void _playMusic() async {
    await _audioPlayer.play(AssetSource('sounds/dentrocidades.mp3'),volume: 55.0, balance: 100.0, );
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
                  Navigator.of(context).pushReplacementNamed('/login');
                }
              )
            ],
            )
        ),
      ),
      
      appBar: AppBar(
        title: Text('CATEDRAL DA INGAZEIRA', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold)), 
        
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
            child: Image.asset('assets/imagens/finaloculos.png', fit: BoxFit.cover)),
  
            Text(
            textAlign: TextAlign.center,
            'Parabéns! Você recebeu o lendário Óculos Escuros da Lama ao Caos. Continue se organizando em busca de Chico pois só ele pode desosrganizar o mal iminente que está chegando em PE.', 
            style: TextStyle(fontFamily: 'Xilosa',fontSize: 20,color: Color.fromARGB(255, 31, 100, 255),
            fontWeight: FontWeight.bold
            )
            ), 


            Container(height: 60,),
           
            ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Color.fromARGB(255, 2, 171, 255),
                              backgroundColor: Color.fromARGB(255, 255, 255, 255),
                            ),
                        
                            onPressed: () {
                                context.read<TimeProvider>().zeroGame();
                                _audioPlayer.stop();
                                Navigator.of(context).pushReplacementNamed('/gameoverGood');   
                            }, 
                            child: Text('CONTINUAR'), 
                          ),
              

             
          ],
        ),
      ),
       
    );
  }

}