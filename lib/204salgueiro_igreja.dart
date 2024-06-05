
import 'package:flutter/material.dart';
import 'package:cadechico/app_controller.dart';

class SalgueiroIgrejaPage extends StatefulWidget{
  @override
  State<SalgueiroIgrejaPage> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<SalgueiroIgrejaPage> {
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
        title: Text('Igreja de Santo Antônio', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold)), 
        
      ),
      body: Container( 
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            Container(
            //height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/imagens/03.salgueiro.igreja.png', fit: BoxFit.cover)),
  
            Text(
            textAlign: TextAlign.center,
            'A Igreja de Santo Antônio é um dos principais marcos históricos e religiosos de Salgueiro. Remonta ao início do século XX, por volta de 1906, quando foi erguida pela primeira vez em estilo colonial.', 
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
                                    Navigator.of(context).pushReplacementNamed('/viagem05');   
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
                                    Navigator.of(context).pushReplacementNamed('/salgueiroExplorar');   
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