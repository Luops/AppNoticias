import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:fl_noticias_projetofinal/screens/home.dart';
import 'package:fl_noticias_projetofinal/screens/mainpagecs.dart';
import 'package:fl_noticias_projetofinal/screens/mainpagelol.dart';

class LoudAcusaPain extends StatelessWidget {
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
                          "Donos da LOUD acusam a paiN de “tentar roubar tudo” da organização",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF180F97)),
                        ),
                      ),
                      SizedBox(height: 10),
                      Image.asset("assets/images/Loud.png"),
                      SizedBox(height: 10),
                      Text(
                        "Donos e fundadores da LOUD, Jean e Bruno “Playhard” acusaram a paiN de tentar “roubar tudo da LOUD” nos últimos meses. A publicação foi feita pelo Jean em seu Twitter e pouco tempo depois compartilhada pelo Bruno.\n\n“Nos últimos meses a Pain tentou roubar tudo da loud haha staffs, ideias, talentos, socios.. Talvez um dia consigam roubar um cérebro para construir algo que não seja hobby“, publicou Jean. Ele complementou dizendo que nunca viu “alguém tão desesperado que nem o time mencionado”.",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Poucas horas depois o Bruno “PlayHard” compartilhou o tweet de Jean comentando sobre a situação.\n\n“Sempre tem competição no mercado e isso é saudável pro progresso… Mas começam a vender pessoas de OUTRO time para plataformas de stream antes de dedicar tempo e energia para crescer os próprios, passam o dia inteiro ligando para nosso pessoal, espalhando rumores, mentiras e etc… Não sou de falar muito, mas o que tão fazendo é complicado. Os jogadores e influencers da paiN são muito brabos e merecem o mundo, mas essa abordagem tá ridícula”, publicou PlayHard.",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "A LOUD fez sua estreia no LoL este ano, sendo uma das escolhidas no sistema de franquias do CBLOL. A organização, junto à própria paiN, teve alguns dos jogos mais assistidos do torneio. Os dois times se classificam para os playoffs, e curiosamente brTT e companhia foram os responsáveis por eliminar os recém-chegados do torneio após conseguirem uma virada histórica nas quartas de final.",
                        style: TextStyle(fontSize: 15),
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
