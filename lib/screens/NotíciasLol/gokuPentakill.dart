import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:fl_noticias_projetofinal/screens/home.dart';
import 'package:fl_noticias_projetofinal/screens/mainpagecs.dart';
import 'package:fl_noticias_projetofinal/screens/mainpagelol.dart';

class GokuPentaKill extends StatelessWidget {
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
                          "League of Legends",
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
                          "CBLOL Academy 2021: Goku faz Pentakill e Flamengo vence a FURIA na decisão",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF180F97)),
                        ),
                      ),
                      SizedBox(height: 10),
                      Image.asset("assets/images/Goku.png"),
                      SizedBox(height: 10),
                      Text(
                        "O Flamengo é o campeão do CBLOL Academy 2021! O time rubro-negro venceu a FURIA na final por 3-1 e garantiu o título da primeira edição do torneio.\n\nNo primeiro jogo o Flamengo só precisou de 29 minutos para dominar a FURIA, sendo que o destaque ficou para o atirador Neturno, que terminou 10/2/5.",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "A FURIA não se deixou abalar e devolveu o “atropelo” da primeira partida, vencendo aos 32 minutos com um placar de abates de 24-11. O destaque novamente ficou para o atirador, dessa vez para o ST3PZ, que com sua Kai’Sa finalizou 15/1/8.",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                          "No terceiro jogo foi a vez do Flamengo novamente mostrar superioridade. O time conseguiu todos os dragões da partida, e após fazer o primeiro buff do Barão, partiu para a base inimiga e finalizou o jogo aos 25 minutos."),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "O quarto jogo foi o mais equilibrado entre os dois times. O Flamengo liderou em ouro na maior parte do tempo, mas aos 38 minutos a FURIA comprou uma luta que começou favorável para eles, mas o mid laner Goku brilhou de Sylas e conseguiu um Pentakill, finalizando a partida e série com estilo para o time rubro-negro.",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
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
