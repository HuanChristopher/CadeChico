
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'time_provider.dart';

class Viagem07Page extends StatefulWidget{
  @override
  State<Viagem07Page> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<Viagem07Page> {

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
            child: Image.asset('assets/imagens/mapa07.png', fit: BoxFit.cover)),

            Container(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

              Column(
                children: [
                  MaterialButton(
                             
                    onPressed: () {
                      context.read<TimeProvider>().addNineHours();
                       if(GlobalVariables.isGameOver){
                                        Navigator.pushNamed(context, '/gameover'); 
                                      } else {
                      Navigator.pushNamed(context, '/petrolina');}
                 
                    }, 
                    child: Image.asset('assets/cidades/petrolina.png', fit: BoxFit.cover, width: 70, height: 50,), 
                  ),

                  SizedBox(height: 10),

                  Text('Petrolina', textAlign: TextAlign.center, style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold),),
                ],
              ),

              Column(
                children: [
                  MaterialButton(
                                
                                onPressed: () {
                                  context.read<TimeProvider>().addThreeHours();
                                   if(GlobalVariables.isGameOver){
                                        Navigator.pushNamed(context, '/gameover'); 
                                      } else {
                                  Navigator.pushNamed(context, '/garanhuns');}
                                  
                                }, 
                                child: Image.asset('assets/cidades/garanhuns.png', fit: BoxFit.cover, width: 70, height: 50,), 
                              ),
                  SizedBox(height: 10),

                  Text('Garanhuns', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold,),),
                ],
              ),

              Column(
                children: [
                  MaterialButton(
                               
                                onPressed: () {
                                  context.read<TimeProvider>().addSixHours();
                                   if(GlobalVariables.isGameOver){
                                        Navigator.pushNamed(context, '/gameover'); 
                                      } else {
                                  Navigator.pushNamed(context, '/salgueiro');}
                               
                                }, 
                                child: Image.asset('assets/cidades/salgueiro.png', fit: BoxFit.cover, width: 70, height: 50,), 
                              ),
                  SizedBox(height: 10),

                  Text('Salgueiro', textAlign: TextAlign.center, style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold),),
                ],

                
              ),

              

              ],
              
            ),

            Container(height: 60,),

            MaterialButton(
                            
                onPressed: () {
                    Navigator.pushNamed(context, '/vitoria');
               
                }, 
                child: Image.asset('assets/icones/voltar.png', fit: BoxFit.cover, width: 50, height: 50,), 
            ),
            
          ],
        ),
      ),
       
    );
  }

}