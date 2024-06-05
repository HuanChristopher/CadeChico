
import 'package:flutter/material.dart';

class pitacoPage extends StatefulWidget{
  @override
  State<pitacoPage> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<pitacoPage> {
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
        title: Text('PITACO', style: TextStyle(fontWeight: FontWeight.bold,)), 
        
      ),
      body: Container( 
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text('Personalidades de Pernambuco', 
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold),),
           
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      MaterialButton(            
                      onPressed: () { 
                        Navigator.of(context).pushReplacementNamed('/alceu');   
                      },
                      
                      child: 
                      Container(
                      width: 70, height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/personalidades/alceu.jpg'))
                      ),
                      ),
                      
                      ),

                      Text('Alceu\nValença', 
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold),),
                    ],
                  ),
              
                SizedBox(width: 15),
              
              Column(
                    children: [
                       MaterialButton(            
                      onPressed: () { 
                        Navigator.of(context).pushReplacementNamed('/graca');   
                      },
                      
                      child: 
                      Container(
                      width: 70, height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/personalidades/gracaaraujo.jpg'))
                                  ),
                       ),
                      ),
                      Text('Graça\nAraujo', 
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold),),
                    ],
                  ),
                 
              
                  SizedBox(width: 15),
              
              Column(
                    children: [
                       MaterialButton(            
                      onPressed: () { 
                        Navigator.of(context).pushReplacementNamed('/ariano');   
                      },
                      
                      child: 
                      Container(
                      width: 70, height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/personalidades/ariano.jpg'))
                      ),
                      ),
              ),
                      Text('Ariano\nSuassuna', 
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold),),
                    ],
                  ),
        
                ],
              ),
            ),
  
            Container(height: 10,),

             Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      MaterialButton(            
                      onPressed: () { 
                        Navigator.of(context).pushReplacementNamed('/jason');   
                      },
                      
                      child: 
                      Container(
                      width: 70, height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/personalidades/jasonwallace.jpg'))
                      ),
                      ),
                      
                      ),

                      Text('Jason\nWallace', 
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold),),
                    ],
                  ),
              
                SizedBox(width: 15),
              
              Column(
                    children: [
                       MaterialButton(            
                      onPressed: () { 
                        Navigator.of(context).pushReplacementNamed('/chico');   
                      },
                      
                      child: 
                      Container(
                      width: 70, height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/personalidades/chico.jpg'))
                                  ),
                       ),
                      ),
                      Text('Chico\nScience', 
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold),),
                    ],
                  ),
                 
              
                  SizedBox(width: 15),
              
              Column(
                    children: [
                       MaterialButton(            
                      onPressed: () { 
                        Navigator.of(context).pushReplacementNamed('/lia');   
                      },
                      
                      child: 
                      Container(
                      width: 70, height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/personalidades/lia.jpg'))
                      ),
                      ),
              ),
                      Text('Lia de\nItamaracá', 
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold),),
                    ],
                  ), 
                ],
              ),
              
            ),
             MaterialButton(
                            
                onPressed: () {
                   Navigator.of(context).pushReplacementNamed('/recife');   
                }, 
                child: Image.asset('assets/icones/voltar.png', fit: BoxFit.cover, width: 50, height: 50,), 
            ),

          ],
          
        ),
        
      ),
       
    );
  }

}

