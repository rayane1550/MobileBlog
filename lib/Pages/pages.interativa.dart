  import 'package:flutter/material.dart';

  class TelaInterativa extends StatefulWidget { // Statefull é para telas que tem interação com o usuário, ou seja, telas que podem mudar de estado. Ele é usado quando a tela precisa atualizar seu conteúdo com base em ações do usuário ou eventos. O StatefulWidget é composto por duas classes: a classe principal (TelaInterativa) e a classe de estado (_TelaInterativaState). A classe de estado é onde a lógica de atualização da tela é implementada, e o método setState() é usado para notificar o framework de que o estado da tela mudou, o que faz com que a tela seja reconstruída com as novas informações.
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