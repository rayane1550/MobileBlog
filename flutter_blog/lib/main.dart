import 'package:flutter/material.dart';
import 'package:flutter_blog/Pages/pages.links.dart';

void main() {
  runApp(MyApp()); // class myapp é a classe principal do aplicativo, onde o widget raiz é criado e executado. O método runApp() é usado para iniciar a aplicação, passando uma instância de MyApp como argumento. MyApp é um widget sem estado (StatelessWidget) que define a estrutura básica da interface do usuário.
}

// base de navegação e configurações globais
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // construção do aplicativo
      home: TelaLinks() // tela inicial do aplicativo, onde os links serão exibidos
      

    );
  }
}