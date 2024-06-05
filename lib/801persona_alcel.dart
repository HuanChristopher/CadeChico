
import 'package:flutter/material.dart';

class AlcelPage extends StatefulWidget{
  @override
  State<AlcelPage> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<AlcelPage> {
  int counter = 0;

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
        title: Text('Alceu Valença', style: TextStyle(fontWeight: FontWeight.bold,)), 
        
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
                          image: AssetImage('assets/personalidades/alceu.jpg'))
                      ),
                      ),
  
            Container(height: 10,),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column( 
                      children: [
                         Text('Nome:                Alceu Paiva Valença\nGênero:              Homem\nProfissão:          Cantor\nCidade Natal:    São Bento do Una\nCaracterísticas e fatos:', 
                        //textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold),),
                        Text('Possui cabelos longos e cacheados,conferindo-lhe um visual despojado e autêntico.Frequentemente usa barba.Ele gosta de usar chapéus, coletes, e peças de roupa que têm um toque boêmio.', 
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold),),
                        Container(width: 20,),
                        
        
                      ]
                    ),
            ),
                 
              
                  SizedBox(width: 30),
              
             

            
             MaterialButton(
                            
                onPressed: () {
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

