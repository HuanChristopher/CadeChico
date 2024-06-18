
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class LiaPage extends StatefulWidget{
  @override
  State<LiaPage> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<LiaPage> {
  int counter = 0;
  AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _playMusic();
  }

  void _playMusic() async {
    await _audioPlayer.play(AssetSource('sounds/LuaCiranda.mp3'),volume: 155.0, balance: 100.0, );
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
        title: Text('Lia de Itamaracá', style: TextStyle(fontWeight: FontWeight.bold,)), 
        
      ),
      body: Container( 
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
                      width: 140, height: 140,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/personalidades/lia.jpg'))
                      ),
                      ),
  
            Container(height: 10,),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column( 
                      children: [
                         Text('Nome:                Maria Madalena Correia do Nascimento\nGênero:              Mulher\nProfissão:          Cantora, Dançarina e Compositora\nCidade Natal:    Itamaracá\nCaracterísticas e fatos:', 
                        //textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold),),
                        Text('Reconhecida como a Rainha da Ciranda, uma dança e música tradicional do Nordeste, Lia de Itamaracá é Patrimônio Vivo de Pernambuco. Trabalhou como merendeira em uma escola pública da rede estadual de ensino até 2008, quando recebeu da Fundarpe o título de Embaixadora da Casa da Cultura do Recife.', 
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold),),
                        Container(width: 20,),
                        
        
                      ]
                    ),
            ),
                 
              
                  SizedBox(width: 30),
              
             

            
             MaterialButton(
                            
                onPressed: () {
                  _audioPlayer.stop();
                   Navigator.of(context).pushReplacementNamed('/pitaco');   
                }, 
                child: Image.asset('assets/icones/voltar.png', fit: BoxFit.cover, width: 50, height: 50,), 
            ),

          ],
          
        ),
        
      ),
       
    );
  }

}

