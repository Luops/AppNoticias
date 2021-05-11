import 'package:flutter/material.dart';

import 'screens/home.dart';

void main() => runApp(MaterialApp(
      title: "FL Notícias",
      home: Home(),
      theme: ThemeData(
        //Configuração
        primaryColor: Color(0xFF180F97),
        scaffoldBackgroundColor: Color(0xFFE4E4E4), //Cor do scaffold
        elevatedButtonTheme: ElevatedButtonThemeData(
          //Editar os botoes
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.black, //cor do texto do botao
            primary: Color(0xFFC8C8C8),
            //Cor de fundo
          ),
        ),
      ),
    ));
