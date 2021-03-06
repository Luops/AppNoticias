import 'package:fl_noticias_projetofinal/screens/Not%C3%ADciasLol/asCincoFinais.dart';
import 'package:fl_noticias_projetofinal/screens/Not%C3%ADciasLol/equipesQueChegaram.dart';
import 'package:fl_noticias_projetofinal/screens/Not%C3%ADciasLol/gokuPentakill.dart';
import 'package:fl_noticias_projetofinal/screens/Not%C3%ADciasLol/loudAcusaPain.dart';
import 'package:fl_noticias_projetofinal/screens/Not%C3%ADciasLol/matsu.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:fl_noticias_projetofinal/screens/home.dart';
import 'package:fl_noticias_projetofinal/screens/mainpagecs.dart';

class MainPageLol extends StatelessWidget {
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
                        child: Text(
                          "Home",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
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
              SizedBox(
                height: 20,
              ),
              Container(
                color: Color(0xFFFFFFFF),
                width: 480,
                height: 145,
                child: GestureDetector(
                  child: Row(
                    children: [
                      Image.asset("assets/images/brtt.png"),
                      Expanded(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Equipes que mais chegaram em finais na hist??ria do CBLOL",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "No pr??ximo domingo (18), ser?? realizada a Grande Final do 1?? split do CBLOL 2021, a 17?? decis??o do torneio, organizado desde 2012 e que come??ou a ser dividido em duas etapas a partir de 2014.",
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) {
                        return EquipesMaisChegaram();
                      }),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Color(0xFFFFFFFF),
                width: 480,
                height: 145,
                child: GestureDetector(
                  child: Row(
                    children: [
                      Image.asset("assets/images/Pain.png"),
                      Expanded(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Relembre as cinco finais de CBLOL que a paiN j?? disputou",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "No pr??ximo domingo (18), a paiN Gaming vai encarar a sua sexta final de CBLOL na hist??ria.",
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) {
                        return AsCincoFinaisDaPain();
                      }),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Color(0xFFFFFFFF),
                width: 480,
                height: 145,
                child: GestureDetector(
                  child: Row(
                    children: [
                      Image.asset("assets/images/Loud.png"),
                      Expanded(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Donos da LOUD acusam a paiN de ???tentar roubar tudo??? da organiza????o",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Donos e fundadores da LOUD, Jean e Bruno ???Playhard??? acusaram a paiN de tentar ???roubar tudo da LOUD??? nos ??ltimos meses.",
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) {
                        return LoudAcusaPain();
                      }),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Color(0xFFFFFFFF),
                width: 480,
                height: 145,
                child: GestureDetector(
                  child: Row(
                    children: [
                      Image.asset("assets/images/matsu.png"),
                      Expanded(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "???A paiN era o time que eu queria enfrentar???, revela Matsu",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "???Tenho muito carinho pela organiza????o, tenho saudades, passei muitos momentos bons l??, mas claro que tem aquele a mais por ser contra a paiN.",
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) {
                        return Matsu();
                      }),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Color(0xFFFFFFFF),
                width: 480,
                height: 145,
                child: GestureDetector(
                  child: Row(
                    children: [
                      Image.asset("assets/images/Goku.png"),
                      Expanded(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Goku faz Pentakill e Flamengo vence a FURIA na decis??o do CBLOL Academy",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "O Flamengo ?? o campe??o do CBLOL Academy 2021! O time rubro-negro venceu a FURIA na final por 3-1 e garantiu o t??tulo da primeira edi????o do torneio.",
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) {
                        return GokuPentaKill();
                      }),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
