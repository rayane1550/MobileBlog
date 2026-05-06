  import 'package:url_launcher/url_launcher.dart'; // importação da biblioteca url_launcher, que é usada para abrir links no navegador. Essa biblioteca fornece funcionalidades para lidar com URLs e permite que o aplicativo abra links externos de forma fácil e eficiente.
  import 'dart:async';

import 'package:flutter/material.dart';

  class MyLink extends StatelessWidget {
      String imagem;
      String link;
    MyLink({super.key, required this.imagem, required this.link}); // construtor da classe MyLink, que recebe dois parâmetros obrigatórios: imagem e link. Esses parâmetros são usados para configurar o widget MyLink, permitindo que ele exiba uma imagem e um link associados.

    @override
    Widget build(BuildContext context) {
      return GestureDetector(
         onTap: () async{
          // Uri urlConvertido = Uri.parse(imagem); // converte a string da URL (imagem) em um objeto Uri, que é necessário para abrir o link corretamente. O método Uri.parse() é usado para criar um objeto Uri a partir da string fornecida.
          Uri linkConvertido = Uri.parse(link); 
          if (await canLaunchUrl(linkConvertido)) {
            await launchUrl(linkConvertido); // se o link convertido (linkConvertido) puder ser aberto, a função launchUrl() é chamada para abrir o link no navegador. Essa função é assíncrona, então o uso de await garante que o aplicativo aguarde a conclusão da operação antes de continuar.
          }
         },
         child: Image.network(imagem, width:150)
      );
    }
  }
 

      