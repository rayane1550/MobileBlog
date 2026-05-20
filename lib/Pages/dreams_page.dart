import 'package:flutter/material.dart'; // 

class DreamsPage extends StatefulWidget {
  const DreamsPage({super.key});

  @override
  State<DreamsPage> createState() => _DreamsPageState();
}

class _DreamsPageState extends State<DreamsPage> {
  final List<Dream> dreams = [
    Dream(
      title: 'Ir para dubai',
      description: 'burj khalifa maior predio de dubai',
      imageUrl: 'https://plus.unsplash.com/premium_photo-1697729914552-368899dc4757?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bWVpb3IlMjBwcmVkaW8lMjBkZSUyMGR1YmFpfGVufDB8fDB8fHww',
      emoji: '✈️',
    ),
    Dream(
      title: 'Conhecer a grecia',
      description: 'Santorini',
      imageUrl: 'https://plus.unsplash.com/premium_photo-1661964149725-fbf14eabd38c?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      emoji: '🏛️',
    ),
    Dream(
      title: 'Criar sites e apps inovadores',
      description: 'Ajudar outros desenvolvedores a crescer sem sair de casa',
      imageUrl: 'https://images.unsplash.com/photo-1627896181038-a0cf83c86008?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fENyaWFyJTIwc2l0ZXMlMjBlJTIwYXBwcyUyMGlub3ZhZG9yZXN8ZW58MHx8MHx8fDA%3D',
      emoji: '💻',
    ),
    Dream(
      title: 'Fazer meu proprio sistema para o meu brecho',
      description: 'Criar uma plataforma de e-commerce para meu brechó online',
      imageUrl: 'https://images.unsplash.com/photo-1699898016940-ac6892b79171?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fEZhemVyJTIwbWV1JTIwcHJvcHJpbyUyMHNpc3RlbWElMjBwYXJhJTIwbyUyMG1ldSUyMGJyZWNob3xlbnwwfHwwfHx8MA%3D%3D',
      emoji: '🛍️',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F1229),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2D1B4E),
        elevation: 0,
        title: const Text(
          'Meus Sonhos & Metas',
          style: TextStyle(
            color: Color(0xFFA78BFA),
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 1, // o letterSpacing é usado para ajustar o espaçamento entre as letras do texto, dando um toque de estilo e melhorando a legibilidade.
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFFA78BFA)),
          onPressed: () => Navigator.pop(context),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: const Color(0xFF8B5CF6).withOpacity(0.2),
                  width: 1,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: dreams.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: DreamCard(
                    dream: dreams[index],
                    onTap: () {
                      // Mostrar imagem em um dialog
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          backgroundColor: Colors.transparent,
                          child: GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    dreams[index].imageUrl,
                                    fit: BoxFit.cover,
                                    width: MediaQuery.of(context).size.width * 0.9,
                                    height: MediaQuery.of(context).size.height * 0.6,
                                    loadingBuilder: (context, child, loadingProgress) {
                                      if (loadingProgress == null) return child;
                                      return Container(
                                        width: MediaQuery.of(context).size.width * 0.9,
                                        height: MediaQuery.of(context).size.height * 0.6,
                                        color: const Color(0xFF3D2663),
                                        child: const Center(
                                          child: CircularProgressIndicator(
                                            color: Color(0xFF8B5CF6),
                                          ),
                                        ),
                                      );
                                    },
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        width: MediaQuery.of(context).size.width * 0.9,
                                        height: MediaQuery.of(context).size.height * 0.6,
                                        color: const Color(0xFF3D2663),
                                        child: const Center(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.image_not_supported,
                                                color: Color(0xFFA78BFA),
                                                size: 50,
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                'Erro ao carregar imagem',
                                                style: TextStyle(color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Text(
                                  'Clique para fechar',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
            const SizedBox(height: 30),
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
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '💡 Dica',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFA78BFA),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Clique em qualquer sonho para saber mais sobre como alcançá-lo ou para se conectar com oportunidades relacionadas!',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFC4B5FD),
                      height: 1.6,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}


class Dream {
  final String title;
  final String description;
  final String imageUrl;
  final String emoji;

  Dream({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.emoji,
  });
}


class DreamCard extends StatefulWidget {
  final Dream dream;
  final VoidCallback onTap;

  const DreamCard({
    required this.dream,
    required this.onTap,
    super.key,
  });

  @override
  State<DreamCard> createState() => _DreamCardState();
}

class _DreamCardState extends State<DreamCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (_) {
          setState(() {
            isHovered = false;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xFF2D1B4E).withOpacity(0.6),
            border: Border.all(
              color: isHovered
                  ? const Color(0xFFA78BFA)
                  : const Color(0xFF8B5CF6).withOpacity(0.3),
              width: 2,
            ),
            boxShadow: isHovered
                ? [
                    BoxShadow(
                      color: const Color(0xFF8B5CF6).withOpacity(0.5),
                      blurRadius: 20,
                      spreadRadius: 2,
                    ),
                  ]
                : [
                    BoxShadow(
                      color: const Color(0xFF8B5CF6).withOpacity(0.15),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: [
                // Imagem de fundo
                Positioned.fill(
                  child: Image.network(
                    widget.dream.imageUrl,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Container(
                        color: const Color(0xFF3D2663),
                        child: const Center(
                          child: CircularProgressIndicator(
                            color: Color(0xFF8B5CF6),
                          ),
                        ),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: const Color(0xFF3D2663),
                        child: const Center(
                          child: Icon(
                            Icons.image_not_supported,
                            color: Color(0xFFA78BFA),
                            size: 50,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // Overlay escuro
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color(0xFF2D1B4E).withOpacity(0.4),
                          const Color(0xFF1F1229).withOpacity(0.85),
                        ],
                      ),
                    ),
                  ),
                ),
                // Conteúdo
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.dream.title,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFA78BFA),
                                    letterSpacing: 0.5,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  widget.dream.description,
                                  style: const TextStyle(
                                    fontSize: 13,
                                    color: Color(0xFFC4B5FD),
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            widget.dream.emoji,
                            style: const TextStyle(fontSize: 32),
                          ),
                        ],
                      ),
                      // Indicador de clique
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Clique para saber mais',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFFA78BFA),
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: const Color(0xFFA78BFA).withOpacity(0.8),
                            size: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
