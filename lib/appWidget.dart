
import 'package:cadechico/001inicial.dart';
import 'package:cadechico/003historia.dart';
import 'package:cadechico/006recife_explorar.dart';
import 'package:cadechico/007recife_saoluiz.dart';
import 'package:cadechico/008recife_ufrpe.dart';
import 'package:cadechico/009recife_conceicao.dart';
import 'package:cadechico/101bonito_page.dart';
import 'package:cadechico/103bonito_explorar.dart';
import 'package:cadechico/104bonito_cachoeira.dart';
import 'package:cadechico/105bonito_teleferico.dart';
import 'package:cadechico/106bonito_capela.dart';
import 'package:cadechico/201salgueiro_page.dart';
import 'package:cadechico/202salgueiro_explorar.dart';
import 'package:cadechico/203salgueiro_quilombola.dart';
import 'package:cadechico/204salgueiro_igreja.dart';
import 'package:cadechico/205salgueiro_sitio.dart';
import 'package:cadechico/301petrolina_page.dart';
import 'package:cadechico/302petrolina_explorar.dart';
import 'package:cadechico/304petrolina_museu.dart';
import 'package:cadechico/305petrolina_catedral.dart';
import 'package:cadechico/306petrolina_carrancas.dart';
import 'package:cadechico/401olinda_page.dart';
import 'package:cadechico/402olinda_explorar.dart';
import 'package:cadechico/403olinda_homem.dart';
import 'package:cadechico/404olinda_quatro.dart';
import 'package:cadechico/405olinda_farol.dart';
import 'package:cadechico/501vitoria_page.dart';
import 'package:cadechico/502vitoria_explorar.dart';
import 'package:cadechico/503vitoria_tabocas.dart';
import 'package:cadechico/504vitoria_leao.dart';
import 'package:cadechico/505vitoria_jacare.dart';
import 'package:cadechico/601afogados_page.dart';
import 'package:cadechico/602afogados_explorar.dart';
import 'package:cadechico/603afogados_sitio.dart';
import 'package:cadechico/604afogados_catedral.dart';
import 'package:cadechico/605afogados_vianao.dart';
import 'package:cadechico/701caruaru_page.dart';
import 'package:cadechico/702caruaru_explorar.dart';
import 'package:cadechico/703caruaru_feira.dart';
import 'package:cadechico/704caruaru_museu.dart';
import 'package:cadechico/705caruaru_casa.dart';
import 'package:cadechico/801persona_alcel.dart';
import 'package:cadechico/802persona_graca.dart';
import 'package:cadechico/803persona_ariano.dart';
import 'package:cadechico/804persona_jason.dart';
import 'package:cadechico/805persona_lia.dart';
import 'package:cadechico/806persona_chico.dart';
import 'package:cadechico/pitaco.dart';
import 'package:cadechico/viagem01.dart';
import 'package:cadechico/viagem02.dart';
import 'package:cadechico/viagem03.dart';
import 'package:cadechico/viagem04.dart';
import 'package:cadechico/viagem05.dart';
import 'package:cadechico/viagem06.dart';
import 'package:cadechico/viagem07.dart';
import 'package:cadechico/viagem08.dart';
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
        theme: ThemeData.light(),
        initialRoute: '/inicial',
        routes: {
          '/inicial':         (context)  =>  InicialPage(),
          '/login':           (context)  =>  LoginPage(),
          '/recife':          (context)  =>  RecifePage(),
          '/historia':        (context)  =>  HistoriaPage(), 
          '/recifeExplorar':  (context)  =>  RecifeExplorarPage(),
          '/salgueiroExplorar':  (context)  =>  SalgueiroExplorarPage(),
          '/petrolinaExplorar':  (context)  =>  PetrolinaExplorarPage(),
          '/olindaExplorar':     (context)  =>  OlindaExplorarPage(),
          '/afogadosExplorar':   (context)  =>  AfogadosExplorarPage(),
          '/caruaruExplorar':    (context)  =>  CaruaruExplorarPage(),
          '/vitoriaExplorar':    (context)  =>  VitoriaExplorarPage(),
          '/pitaco':          (context)  =>  pitacoPage(),
          '/viagem01':        (context)  =>  Viagem01Page(), 
          '/viagem08':        (context)  =>  Viagem08Page(), 
          '/viagem02':        (context)  =>  Viagem02Page(), 
          '/viagem03':        (context)  =>  Viagem03Page(), 
          '/viagem04':        (context)  =>  Viagem04Page(), 
          '/viagem05':        (context)  =>  Viagem05Page(), 
          '/viagem06':        (context)  =>  Viagem06Page(), 
          '/viagem07':        (context)  =>  Viagem07Page(), 
          '/bonito':          (context)  =>  BonitoPage(),
          '/bonitoExplorar':  (context)  =>  BonitoExplorarPage(),
          '/salgueiro':       (context)  =>  SalgueiroPage(),
          '/petrolina':       (context)  =>  PetrolinaPage(),
          '/olinda':          (context)  =>  OlindaPage(),
          '/afogados':        (context)  =>  AfogadosPage(),
          '/caruaru':         (context)  =>  CaruaruPage(),
          '/vitoria':         (context)  =>  VitoriaPage(),
          '/recife_saoluiz':  (context)  =>  RecifeSaoLuizPage(),
          '/recife_conceicao':(context)  =>  RecifeConceicaoPage(),
          '/recife_ufrpe':    (context)  =>  RecifeUFRPEPage(),
          '/bonito_cachoeira':(context)  =>  BonitoCachoeiraPage(),
          '/bonito_teleferico':           (context)  =>  BonitoTelefericoPage(),
          '/bonito_capela':               (context)  =>  BonitoCapelaPage(),
          '/olinda_homem':                (context)  =>  OlindaHomemPage(),
          '/olinda_farol':                (context)  =>  OlindaFarolPage(),
          '/olinda_quatro':               (context)  =>  OlindaQuatroPage(),
          '/salgueiro_quilombo':          (context)  =>  SalgueiroQuilombolaPage(),
          '/salgueiro_igreja':            (context)  =>  SalgueiroIgrejaPage(),
          '/salgueiro_sitio':             (context)  =>  SalgueiroSitioPage(),
          '/petrolina_catedral':          (context)  =>  PetrolinaCatedralPage(),
          '/petrolina_museu':             (context)  =>  PetrolinaMuseuPage(),
          '/petrolina_carrancas':         (context)  =>  PetrolinaCarrancasPage(),
          '/vitoria_tabocas':             (context)  =>  VitoriaTabocasPage(),
          '/vitoria_leao':                (context)  =>  VitoriaLeaoPage(),
          '/vitoria_jacare':              (context)  =>  VitoriaJacarePage(),
          '/afogados_sitio':              (context)  =>  AfogadosSitioPage(),
          '/afogados_catedral':           (context)  =>  AfogadosCatedralPage(),
          '/afogados_vianao':             (context)  =>  AfogadosVianaoPage(),
          '/caruaru_feira':               (context)  =>  CaruaruFeiraPage(),
          '/caruaru_museu':               (context)  =>  CaruaruMuseuPage(),
          '/caruaru_casa':                (context)  =>  CaruaruCasaPage(),
          '/alceu':                       (context)  =>  AlcelPage(),
          '/ariano':                      (context)  =>  ArianoPage(),
          '/graca':                       (context)  =>  GracaPage(),
          '/chico':                       (context)  =>  ChicoPage(),
          '/jason':                       (context)  =>  JasonPage(),
          '/lia':                         (context)  =>  LiaPage(),
          
        }
      );
     },
    );
  }
}
