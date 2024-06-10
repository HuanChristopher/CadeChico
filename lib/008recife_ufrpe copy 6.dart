
import 'package:flutter/material.dart';
import 'package:cadechico/app_controller.dart';
import 'package:provider/provider.dart';
import 'time_provider.dart';

class RecifeUFRPEPage6 extends StatefulWidget{
  @override
  State<RecifeUFRPEPage6> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<RecifeUFRPEPage6> {
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
        title: Text('UFRPE', style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold)), 
        
      ),
      body: Container( 
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
            Container(
            
            child: Image.asset('assets/imagens/01.recifeGil06.png', fit: BoxFit.cover)),
  
            Text(
            textAlign: TextAlign.center,
            'Fundada em 1912, a UFRPE é reconhecida pela sua tradição e excelência acadêmica, especialmente nas áreas de ciências agrárias, biológicas, e afins.', 
            style: TextStyle( fontFamily: 'Xilosa', fontSize: 18,color: Color.fromARGB(255, 31, 100, 255),
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
                                    context.read<TimeProvider>().addThreeHours();
                                     if(GlobalVariables.isGameOver){
                                        Navigator.pushNamed(context, '/gameover'); 
                                      } else {
                                    Navigator.pushNamed(context, '/viagem01'); }
                                       
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
                                    context.read<TimeProvider>().addThreeHours();
                                     if(GlobalVariables.isGameOver){
                                        Navigator.pushNamed(context, '/gameover'); 
                                      } else {
                                    Navigator.pushNamed(context, '/recifeExplorar');}
                                      
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
                                    context.read<TimeProvider>().addThreeHours();
                                     if(GlobalVariables.isGameOver){
                                        Navigator.pushNamed(context, '/gameover'); 
                                      } else {
                                    Navigator.pushNamed(context, '/pitaco');}
                                     
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