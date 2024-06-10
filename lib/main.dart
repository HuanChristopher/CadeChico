
import 'package:flutter/material.dart';
import 'package:cadechico/appWidget.dart';
import 'package:provider/provider.dart';
import 'time_provider.dart';



main () {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TimeProvider()),
       
      ],
    
    child: AppWidget(),
    ),
  );   
}


