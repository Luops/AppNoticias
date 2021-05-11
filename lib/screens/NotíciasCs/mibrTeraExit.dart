import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:fl_noticias_projetofinal/screens/home.dart';
import 'package:fl_noticias_projetofinal/screens/mainpagecs.dart';
import 'package:fl_noticias_projetofinal/screens/mainpagelol.dart';

class MibrTeraExit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Image.asset(
                "assets/images/LOGO.png",
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Color(0xFFC8C8C8),
                width: double.infinity,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 21),
                  child: Row(
                    children: [
                      GestureDetector(
                        child: Text("Home",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) {
                              return Home();
                            }),
                          );
                        },
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      GestureDetector(
                        child: Text(
                          "League of Legends",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) {
                              return MainPageLol();
                            }),
                          );
                        },
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      GestureDetector(
                        child: Text(
                          "CS:GO",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) {
                              return MainPageCs();
                            }),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ), //Linha cinza das opções - layout concluído
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 60,
                ),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "CS:GO",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "MIBR terá exit no lugar de danoco durante BLAST e RMR",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF180F97)),
                        ),
                      ),
                      SizedBox(height: 10),
                      Image.asset("assets/images/Mibr.png"),
                      SizedBox(height: 10),
                      Text(
                        "A MIBR anunciou que Raphael 'exit' substituirá Daniel 'danoco' no elenco de CS:GO durante as disputas da BLAST Premier Spring Showdown e do próximo torneio RMR; danoco ficará como substituto durante os dois eventos. A revelação foi feita em vídeo com Alessandro 'Apoka' e Ricardo 'boltz', que também elogiaram os treinos feitos pela equipe após a chegada de exit.",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Contratado recentemente, exit fará sua estreia já no dérbi brasileiro contra a FURIA, marcado para a próxima quarta-feira, dia 14 de abril. Vale lembrar que a BLAST permite o uso de substituições entre mapas, mas a prática não é bem vista pela Valve: apesar de permitir que os times inscrevam um jogador reserva nos eventos RMR, uma eventual substituição custará 20% dos pontos da equipe.",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "O próximo campeonato do circuito RMR ainda não possui data definida, e a própria MIBR não revelou em qual região jogará o torneio: devido à restrição de entrada dos brasileiros nos Estados Unidos, o time pode ficar impossibilitado de participar do RMR norte-americano; em entrevista ao ge, junior, da FURIA, revelou a possibilidade dos jogadores brasileiros de sua equipe disputarem o torneio no México.",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "O circuito, é claro, vale para definir os times classificados para o próximo Major. Ele é composto por uma série de campeonatos regionais que distribuem pontos para as equipes participantes; a pontuação é contabilizada em um ranking — também regional —, onde os melhores times recebem a vaga para o Major.",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
