
import 'package:flutter/material.dart';

class pitacoListaPage extends StatefulWidget{
  @override
  State<pitacoListaPage> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<pitacoListaPage> {
  int counter = 0;

  String? _selectedSexo;
  String? _selectedProfissao;
  String? _selectedCidade;
  String? _selectedCaraceteristica;

  final List<String> _sexos = ['Homem', 'Mulher'];
  final List<String> _profissoes = ['Cantor(a)', 'Jornalista', 'Escritor(a)', 'Ator(a)'];
  final List<String> _cidades = ['Recife','São Bento do Una', 'Itambé', 'João Pessoa(PB)', 'Olinda', 'Itamaracá'];
  final List<String> _caracteristicas = ['Cabelos brancos', 'Maratonista', 'Rubro-Negro', 'Teatro', 'Manguebeach' , 'Ciranda'];


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

            Text('Descreva seu Pitaco', 
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold),),
            
            Container(height: 30,),

            DropdownButton<String>(
            hint: Text('Selecione o sexo'),
            value: _selectedSexo,
            onChanged: (String? newValue) {
              setState(() {
                _selectedSexo = newValue;
              });
            },
            items: _sexos.map((String sexo) {
              return DropdownMenuItem<String>(
              value: sexo,
              child: Text(sexo),
                );
              }).toList(),
            ),

            Container(height: 30,),

            DropdownButton<String>(
            hint: Text('Selecione a profissão'),
            value: _selectedProfissao,
            onChanged: (String? newValue) {
              setState(() {
                _selectedProfissao = newValue;
              });
            },
            items: _profissoes.map((String profissao) {
              return DropdownMenuItem<String>(
              value: profissao,
              child: Text(profissao),
                );
              }).toList(),
            ),

            Container(height: 30,),

            DropdownButton<String>(
            hint: Text('Selecione a cidade natal'),
            value: _selectedCidade,
            onChanged: (String? newValue) {
              setState(() {
                _selectedCidade = newValue;
              });
            },
            items: _cidades.map((String cidade) {
              return DropdownMenuItem<String>(
              value: cidade,
              child: Text(cidade),
                );
              }).toList(),
            ),

            Container(height: 30,),

            DropdownButton<String>(
            hint: Text('Selecione uma característica'),
            value: _selectedCaraceteristica,
            onChanged: (String? newValue) {
              setState(() {
                _selectedCaraceteristica = newValue;
              });
            },
            items: _caracteristicas.map((String caracteristica) {
              return DropdownMenuItem<String>(
              value: caracteristica,
              child: Text(caracteristica),
                );
              }).toList(),
            ),

            Container(height: 30,),
    
            Column(
              children: [
                MaterialButton(
                                
                    onPressed: () {
                     
                     
                    }, 
                    child: Image.asset('assets/icones/megaphone.png', fit: BoxFit.cover, width: 50, height: 50,), 
                ),

                Text('Mandar o Pitaco', 
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 31, 100, 255),fontWeight: FontWeight.bold),),
              ],
            ),

            Container(height: 30,),
    
            MaterialButton(
                            
                onPressed: () {
                  Navigator.of(context).pop();
                 
                }, 
                child: Image.asset('assets/icones/voltar.png', fit: BoxFit.cover, width: 50, height: 50,), 
            ),

          ],
          
        ),
        
      ),
       
    );
  }

}

