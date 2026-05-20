// essa tela vai ser usada para mostrar os links relacionados ao blog, como redes sociais, etc.

import 'package:flutter/material.dart';
import 'package:flutter_blog/Pages/pages.interativa.dart';
import 'package:flutter_blog/components/componentes.mylink.dart'; // importação do pacote flutter/material.dart, que é a biblioteca principal para criar interfaces de usuário no Flutter. Ela fornece uma ampla variedade de widgets e ferramentas para construir aplicativos visuais.

class TelaLinks extends StatelessWidget {
  const TelaLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // o Scaffold é a estrtura basica do site 
      appBar: AppBar(title: Text("Tela de Links")),
      body:Center(
        child: Column(
          children: [
            MyLink(imagem: "https://marketplace.canva.com/EAFEu1BTb0s/2/0/1600w/canva-site-pessoal-blogueiro-simples-e-elegante-bege-claro-r1rKQf520Ts.jpg", link: "https://pt.squarespace.com/websites/crie-um-blog?channel=pnb&subchannel=go&campaign=pnb-go-row_low-multi-core_verticals-mix&subcampaign=(blog-pt_blog_phr)&gclsrc=aw.ds&gad_source=1&gad_campaignid=22798236890&gbraid=0AAAAADxS_FJbLCS_KOG0bHK-g0YG7P4dY&gclid=Cj0KCQjw2MbPBhCSARIsAP3jP9wle52QIG7o_aTkIQChMF5RfC3ADns41T7rK0vRjQ3Uoo-yt5YM_30aAiMhEALw_wcB"),
            TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                 TelaInterativa()));
              },
              child: Text("ir para a tela ")
            ),

          ],
        )
      )

    );
  }
}