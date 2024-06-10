import 'package:flutter/material.dart';
import 'package:cadechico/app_controller.dart';
import 'package:provider/provider.dart';
import 'time_provider.dart';


class PetrolinaExplorarPage extends StatefulWidget{
  @override
  State<PetrolinaExplorarPage> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<PetrolinaExplorarPage> {
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
        title: Text('ANDANDO POR PETROLINA', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold)), 
        
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
           
            Column(
              children: [
                MaterialButton(
                                 
                                    onPressed: () {
                                      context.read<TimeProvider>().addTwoHours();
                                      
                                      if(GlobalVariables.isGameOver){
                                        Navigator.pushNamed(context, '/gameover'); 
                                      } else {
                                        Navigator.pushNamed(context, '/petrolina_museu'); 
                                      }

                                       
                                       
                                    }, 
                                    child: Image.asset('assets/imagens/04.petrolina.museu.png', fit: BoxFit.cover, width: 180, height: 130,), 
                                  ),
                Text('Museu do Sertão', textAlign: TextAlign.center, style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold),),
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
                                  context.read<TimeProvider>().addTwoHours();
                                   if(GlobalVariables.isGameOver){
                                        Navigator.pushNamed(context, '/gameover'); 
                                      } else {
                                  Navigator.pushNamed(context, '/petrolina_catedral'); }
                                }, 
                                child: Image.asset('assets/imagens/04.petrolina.catedral.png', fit: BoxFit.cover, width: 180, height: 130,), 
                              ),

                               SizedBox(height: 10),

                               Text('Catedral do Sagrado\nCoração de Jesus ', textAlign: TextAlign.center, style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold),),
                ],
              ),

              Column(
                children: [
                  MaterialButton(
                                
                                onPressed: () {
                                  context.read<TimeProvider>().addFourHours();
                                   if(GlobalVariables.isGameOver){
                                        Navigator.pushNamed(context, '/gameover'); 
                                      } else {
                                  Navigator.pushNamed(context, '/petrolina_carrancas');}
                                
                                }, 
                                child: Image.asset('assets/imagens/04.petrolina.carrancas.png', fit: BoxFit.cover, width: 130, height: 90,), 
                              ),
                  SizedBox(height: 10),

                  Text('Espaço Cultural\nAna das Carrancas', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold,),),
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
                                  Navigator.pushNamed(context, '/viagem06');  
                                   
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
                                  Navigator.pushNamed(context, '/petrolina'); 
                                
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