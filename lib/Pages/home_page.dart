import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'projects_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F1229),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Conteúdo Principal
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Seção de Qualidades
                  const Text(
                    'Sobre Mim',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFA78BFA),
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 15),
                  // Imagem de Destaque (Circular)
                  Center(
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xFF8B5CF6).withOpacity(0.5),
                          width: 3,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF8B5CF6).withOpacity(0.4),
                            blurRadius: 20,
                            spreadRadius: 3,
                          ),
                        ],
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/perfil_dev.jpeg',
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: const Color(0xFF3D2663),
                              child: const Center(
                                child: Icon(
                                  Icons.person,
                                  color: Color(0xFFA78BFA),
                                  size: 80,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: const Text(
                      'Rayane Vitória Guimarães de Campos',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFA78BFA),
                        letterSpacing: 0.8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color(0xFF2D1B4E).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color(0xFF8B5CF6).withOpacity(0.3),
                        width: 1.5,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF8B5CF6).withOpacity(0.1),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: const Text(
                      'Sou um desenvolvedor apaixonado por criar experiências incríveis. '
                      'Tenho experiência em desenvolvimento mobile, frontend e backend. '
                      'Quando não estou programando, gosto de imaginar como seria viajar o mundo e aprender sobre diferentes culturas.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFC4B5FD),
                        height: 1.6,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Especificações Técnicas
                  const Text(
                    'Habilidades Técnicas',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFA78BFA),
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Column(
                    children: [
                      SkillItem(skill: 'Flutter & Dart', level: 'Basico'),
                      SizedBox(height: 10),
                      SkillItem(skill: 'Frontend', level: 'Intermediário'),
                      SizedBox(height: 10),
                      SkillItem(skill: 'Backend', level: 'Intermediário'),
                      SizedBox(height: 10),
                      SkillItem(skill: 'Arquitetura de Projetos', level: 'Avançado'),
                    ],
                  ),
                  const SizedBox(height: 30),

                  // Fatos Aleatórios
                  const Text(
                    'Curiosidades',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFA78BFA),
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color(0xFF2D1B4E).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color(0xFF8B5CF6).withOpacity(0.3),
                        width: 1.5,
                      ),

          

                      //curiosidades


                    ),
                    child: const Column(
                      children: [
                        FunFact(fact: ' Desenvolvimento é melhor com café'),
                        SizedBox(height: 10),
                        FunFact(fact: ' Adoro música enquanto codifico'),
                        SizedBox(height: 10),
                        FunFact(fact: 'hardware é oque voce chuta e software é oque voce xinga'),
                        SizedBox(height: 10),
                        FunFact(fact: 'Sempre siga o seu sonho e nunca desista!'), // funfact é um codigo que tem a função de mostrar fatos aleatórios, ou seja, curiosidades sobre mim, para deixar o site mais leve e divertido
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),





                  // Redes Sociais
                  const Text(
                    'Minhas Redes Sociais',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFA78BFA),
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color(0xFF2D1B4E).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color(0xFF8B5CF6).withOpacity(0.3),
                        width: 1.5,
                      ),
                    ),
                    child: Column(
                      children: [
                        SocialMediaLink(
                          platform: 'Instagram',
                          username: '@rayane_vih_ofc',
                          icon: '📷',
                          url: 'https://www.instagram.com/rayane_vih_ofc/',
                        ),
                        const SizedBox(height: 12),
                        SocialMediaLink(
                          platform: 'GitHub',
                          username: '@rayane1550',
                          icon: '💻',
                          url: 'https://github.com/rayane1550/Mobile',
                        ),
                        const SizedBox(height: 12),
                        SocialMediaLink(
                          platform: 'LinkedIn',
                          username: 'Rayane Vitória Guimarães de Campos',
                          icon: '🔗',
                          url: 'https://www.linkedin.com/in/rayane-vitoria-guimar%C3%A3es-de-campos-8a7636394/',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),

      // Rodapé com Botão
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF2D1B4E),
          border: Border(
            top: BorderSide(
              color: const Color(0xFF8B5CF6).withOpacity(0.3),
              width: 1,
            ),
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          width: double.infinity,
          height: 55,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF8B5CF6),
                  Color(0xFF3B82F6),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF8B5CF6).withOpacity(0.4),
                  blurRadius: 15,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProjectsPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Ver Meus Projetos',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


// Widget auxiliar para minhas Habilidades
class SkillItem extends StatelessWidget {
  final String skill;
  final String level;

  const SkillItem({
    required this.skill, // a variável skill é do tipo String e é obrigatória para criar um SkillItem. Ela representa o nome da habilidade ou tecnologia que está sendo descrita.
    required this.level,
    super.key,
  });



  @override 
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF3D2663).withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xFF8B5CF6).withOpacity(0.2),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            skill,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFFC4B5FD),
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF8B5CF6), Color(0xFF3B82F6)],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              level,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Widget auxiliar para Fatos Aleatórios
class FunFact extends StatelessWidget {
  final String fact;

  const FunFact({
    required this.fact,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      fact,
      style: const TextStyle(
        fontSize: 14,
        color: Color(0xFFC4B5FD),
        height: 1.6,
      ),
    );
  }
}

// Widget auxiliar para Redes Sociais
class SocialMediaLink extends StatelessWidget {
  final String platform;
  final String username;
  final String icon;
  final String url;

  const SocialMediaLink({
    required this.platform,
    required this.username,
    required this.icon,
    required this.url,
    super.key,
  });

  void _launchURL(String urlString) async {
    final Uri uri = Uri.parse(urlString);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _launchURL(url),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color(0xFF3D2663).withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color(0xFF8B5CF6).withOpacity(0.2),
          ),
        ),
        child: Row(
          children: [
            Text(
              icon,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    platform,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFA78BFA),
                    ),
                  ),
                  Text(
                    username,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFFC4B5FD),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_forward,
              color: Color(0xFFA78BFA),
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}
