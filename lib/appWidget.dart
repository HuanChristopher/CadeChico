
import 'package:cadechico/001inicial.dart';
import 'package:cadechico/003historia.dart';
import 'package:cadechico/005recife_data.dart';
import 'package:cadechico/006recife_explorar.dart';
import 'package:cadechico/101bonito.dart';
import 'package:cadechico/pitaco.dart';
import 'package:cadechico/viagem01.dart';
import 'package:flutter/material.dart';
import 'package:cadechico/app_controller.dart';
import 'package:cadechico/004recife_page.dart';
import 'package:cadechico/002login.dart';

class AppWidget extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
        return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
          brightness: AppController.instance.isDarkTheme 
          ? Brightness.dark
          : Brightness.light,
        ),
        initialRoute: '/inicial',
        routes: {
          '/inicial':         (context)  =>  InicialPage(),
          '/login':           (context)  =>  LoginPage(),
          '/recife':          (context)  =>  RecifePage(),
          '/historia':        (context)  =>  HistoriaPage(), 
          '/recifeData':      (context)  =>  RecifeDataPage(),
          '/recifeExplorar':  (context)  =>  RecifeExplorarPage(),
          '/pitaco':          (context)  =>  pitacoPage(),
          '/viagem01':        (context)  =>  Viagem01Page(), 
          '/bonito':          (context)  =>  BonitoPage(),
          //'/recife_saoluiz': (context)  =>  RecifeSaoLuizPage(),
          //'/recife_conceicao': (context)  =>  RecifeConceicaoPage(),
          //'/recife_torrecristal': (context)  =>  RecifeTorreCristalPage(),
        }
      );
     },
    );
  }
}