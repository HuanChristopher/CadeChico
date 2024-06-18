
import 'package:flutter/material.dart';
import 'package:cadechico/app_controller.dart';
import 'package:provider/provider.dart';
import 'time_provider.dart';
import 'package:audioplayers/audioplayers.dart';


class RecifePage extends StatefulWidget{
  @override
  State<RecifePage> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<RecifePage> {
  int counter = 0;

AudioPlayer _audioPlayer = AudioPlayer();

 @override
  void initState() {
    super.initState();
    _playMusic();
  }

  void _playMusic() async {
    await _audioPlayer.play(AssetSource('sounds/maracatu.mp3'),volume: 55.0, balance: 100.0, );
  }

  void _playMusic2() async {
    await _audioPlayer.play(AssetSource('sounds/plim.mp3'),volume: 155.0, balance: 100.0, );
  }

 void _stopMusic() async {
    await _audioPlayer.stop();
  }

  /*DateTime _dateTime = DateTime(2022, 1, 3, 9, 0); // Segunda-feira, 9:00 AM

  void _addThreeHours() { // Função para add 3 horas
    setState(() {
      _dateTime = _dateTime.add(Duration(hours: 3));
    });
  }

   String get _formattedTime {
    final hours = _dateTime.hour % 12 == 0 ? 12 : _dateTime.hour % 12;
    final period = _dateTime.hour >= 12 ? 'PM' : 'AM';
    return '$hours:00 $period';
  }

  String get _formattedDay {
    const daysOfWeek = [
      'Domingo',
      'Segunda-feira',
      'Terça-feira',
      'Quarta-feira',
      'Quinta-feira',
      'Sexta-feira',
      'Sábado'
    ];
    return daysOfWeek[_dateTime.weekday % 7];
  }*/

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
        title: Text('RECIFE', style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 31, 100, 255), fontWeight: FontWeight.bold)), 
        
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

             /*ElevatedButton(
              onPressed: context.read<TimeProvider>().addEightHours,
              child: Text('Add 8 Hours'),
            ),*/
           
            Container(
            //height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/imagens/01.recife01.png', fit: BoxFit.cover)),
  
            Text(
            textAlign: TextAlign.center,
            'Recife, a Veneza Brasileira! Com suas pontes, história e cultura. Terra do Galo da Madrugada, o maior bloco carnavalesco do mundo.', 
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
                                     _audioPlayer.stop();
                                     Navigator.pushNamed(context, '/viagem01');  
                                     //Navigator.of(context).pushReplacementNamed('/viagem01');    
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
                          _audioPlayer.stop();
                          Navigator.pushNamed(context, '/recifeExplorar');  
                        
                      }, 
                      child: Image.asset('assets/icones/building.png', fit: BoxFit.cover, width: 50, height: 50,), 
                   ),
                  SizedBox(height: 10),

                  Text('EXPLORAR',textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold,),),
                ],
              ),

              Column(
                children: [
                  MaterialButton(
                               
                                onPressed: () {
                                    _audioPlayer.stop();
                                    Navigator.pushNamed(context, '/pitaco');  
                              
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

