
import 'package:flutter/material.dart';
import 'package:cadechico/app_controller.dart';

class OlindaExplorarPage extends StatefulWidget{
  @override
  State<OlindaExplorarPage> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<OlindaExplorarPage> {
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
        title: Text('ANDANDO POR OLINDA', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold)), 
        
      ),
      body: Container( 
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            Column(
              children: [
                MaterialButton(
                                 
                                    onPressed: () {
                                        Navigator.of(context).pushReplacementNamed('/olinda_homem');   
                                    }, 
                                    child: Image.asset('assets/imagens/05.olinda.homemmeianoite.png', fit: BoxFit.cover, width: 180, height: 130,), 
                                  ),
                Text('Homem da Meia-Noite', textAlign: TextAlign.center, style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold),),
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
                                    Navigator.of(context).pushReplacementNamed('/olinda_quatro');   
                                }, 
                                child: Image.asset('assets/imagens/05.olinda.quatrocantos.png', fit: BoxFit.cover, width: 180, height: 130,), 
                              ),

                               SizedBox(height: 10),

                               Text('Quatro Cantos', textAlign: TextAlign.center, style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold),),
                ],
              ),

              Column(
                children: [
                  MaterialButton(
                                
                                onPressed: () {
                                    Navigator.of(context).pushReplacementNamed('/olinda_farol');   
                                }, 
                                child: Image.asset('assets/imagens/05.olinda.farol.png', fit: BoxFit.cover, width: 130, height: 90,), 
                              ),
                  SizedBox(height: 10),

                  Text('Farol de Olinda', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold,),),
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
                  ElevatedButton(
                             
                                onPressed: () {
                                    Navigator.of(context).pushReplacementNamed('/viagem03');   
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
                                    Navigator.of(context).pushReplacementNamed('/olinda');   
                                }, 
                                child: Image.asset('assets/icones/voltar.png', fit: BoxFit.cover, width: 50, height: 50,), 
                              ),
                  SizedBox(height: 10),

                  Text('VOLTAR', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold,),),
                ],
              ),

              Column(
                children: [
                  ElevatedButton(
                               
                                onPressed: () {
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