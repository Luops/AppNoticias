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
              ), //Linha cinza das op????es - layout conclu??do
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
                          "MIBR ter?? exit no lugar de danoco durante BLAST e RMR",
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
                        "A MIBR anunciou que Raphael 'exit' substituir?? Daniel 'danoco' no elenco de CS:GO durante as disputas da BLAST Premier Spring Showdown e do pr??ximo torneio RMR; danoco ficar?? como substituto durante os dois eventos. A revela????o foi feita em v??deo com Alessandro 'Apoka' e Ricardo 'boltz', que tamb??m elogiaram os treinos feitos pela equipe ap??s a chegada de exit.",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Contratado recentemente, exit far?? sua estreia j?? no d??rbi brasileiro contra a FURIA, marcado para a pr??xima quarta-feira, dia 14 de abril. Vale lembrar que a BLAST permite o uso de substitui????es entre mapas, mas a pr??tica n??o ?? bem vista pela Valve: apesar de permitir que os times inscrevam um jogador reserva nos eventos RMR, uma eventual substitui????o custar?? 20% dos pontos da equipe.",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "O pr??ximo campeonato do circuito RMR ainda n??o possui data definida, e a pr??pria MIBR n??o revelou em qual regi??o jogar?? o torneio: devido ?? restri????o de entrada dos brasileiros nos Estados Unidos, o time pode ficar impossibilitado de participar do RMR norte-americano; em entrevista ao ge, junior, da FURIA, revelou a possibilidade dos jogadores brasileiros de sua equipe disputarem o torneio no M??xico.",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "O circuito, ?? claro, vale para definir os times classificados para o pr??ximo Major. Ele ?? composto por uma s??rie de campeonatos regionais que distribuem pontos para as equipes participantes; a pontua????o ?? contabilizada em um ranking ??? tamb??m regional ???, onde os melhores times recebem a vaga para o Major.",
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
