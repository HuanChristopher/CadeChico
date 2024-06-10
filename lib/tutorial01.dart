
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'time_provider.dart';


class Tutorial01Page extends StatefulWidget{
  @override
  State<Tutorial01Page> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<Tutorial01Page> {
  

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
                color: Color.fromARGB(255, 248, 42, 5)),
            ),
            Text(
              context.watch<TimeProvider>().formattedDay,
              style: TextStyle(fontFamily: 'Xilosa',
                fontSize: 20,
                color: Color.fromARGB(255, 248, 42, 5)),
            ),

            SizedBox(height: 20),

             ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Color.fromARGB(255, 2, 171, 255),
                              backgroundColor: Color.fromARGB(255, 255, 255, 255),
                            ),
                        
                            onPressed: () {
            
                                Navigator.of(context).pushReplacementNamed('/tutorial02');   
                            }, 
                            child: Text('CONTINUAR'), 
                          ),

            SizedBox(height: 20),
           
            Container(
            //height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/imagens/tutorial01.png', fit: BoxFit.cover)),
  
            Text(
            textAlign: TextAlign.center,
            'Acima tem uma data e hora. Começamos sempre às 09:00 am da Segunda e o Tempo Limite é 03:00 pm do Domingo.', 
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

