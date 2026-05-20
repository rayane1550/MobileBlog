import 'package:url_launcher/url_launcher.dart'; // importação da biblioteca url_launcher, que é usada para abrir links no navegador. Essa biblioteca fornece funcionalidades para lidar com URLs e permite que o aplicativo abra links externos de forma fácil e eficiente.

import 'package:flutter/material.dart';

  class MyLink extends StatelessWidget {
      final String imagem;
      final String link;
    MyLink({super.key, required this.imagem, required this.link}); 

    @override
    Widget build(BuildContext context) {
      return GestureDetector(
         onTap: () async{

          Uri linkConvertido = Uri.parse(link); // a string do link é convertida em um objeto Uri usando o método Uri.parse(). Isso é necessário porque a função launchUrl() espera um objeto Uri como argumento para abrir o link corretamente.
          if (await canLaunchUrl(linkConvertido)) {
            await launchUrl(linkConvertido); 
          }
         },
         child: Image.network(imagem, width:150)
      );
    }
  }
 

      