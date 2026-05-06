  import 'package:flutter/material.dart';

  class TelaInterativa extends StatefulWidget {
    const TelaInterativa({super.key});

    @override
    State<TelaInterativa> createState() => _TelaInterativaState();
  }

  class _TelaInterativaState extends State<TelaInterativa> {
    List projetos = [
      "Projeto 1",
      "Projeto 2"
    ];

  int index = 0;//variavel que ira observar a lista

  void mudar() {
    setState(() {
      index++; 
      if(index >= projetos.length) {
        index = 0;}
    });
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title:Text("Tela Interativa")),
        body: Center(
          child: Column(
            children: [
              Text(projetos[index]),
              TextButton(onPressed: mudar,child: Text("Mudar")),
              Container(
                width: MediaQuery.of(context).size.width * 0.4, // o MediaQuery é usado para obter as dimensões da tela do dispositivo e calcular a largura do container como 50% da largura total da tela. Isso torna o layout responsivo, adaptando-se a diferentes tamanhos de tela. RESPONSIVO
                height: MediaQuery.of(context).size.height * 0.4,
                color: Colors.blue,
              )
                
              

              
            ]

          )
        )
      );
    }
  }