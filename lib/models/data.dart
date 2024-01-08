import 'package:receitas/models/receita.dart';

List<Receita> listaDeReceitas = [
  Receita(
    fav: false,
    title: "Bolo de Chocolate",
    imageLink: "assets/images/bolo-de-chocolate.jpg",
    kcal: 350,
    timeToMake: 60,
    ingredientes: [
      "2 xícaras de farinha de trigo",
      "1 xícara de cacau em pó",
      "1 colher de sopa de fermento",
      "1 xícara de açúcar",
      "1 xícara de leite",
      "1 xícara de óleo",
      "3 ovos",
    ],
    recipe: """
    Pré-aqueça o forno a 180°C.
    Em uma tigela, misture a farinha de trigo, o cacau em pó e o fermento.
    Em outra tigela, bata o açúcar, o leite, o óleo e os ovos.
    Adicione os ingredientes secos à mistura líquida e mexa bem.
    Despeje a massa em uma forma untada e asse por 30-35 minutos.
    Deixe esfriar antes de servir.
    """,
  ),
  Receita(
    fav: false,
    title: "Salada de Frutas",
    imageLink: "assets/images/salada-de-frutas.jpg",
    kcal: 120,
    timeToMake: 15,
    ingredientes: [
      "1 maçã",
      "1 banana",
      "1 laranja",
      "1 xícara de morangos",
      "1 kiwi",
      "1 colher de sopa de mel",
    ],
    recipe: """
    Descasque e corte as frutas em pedaços.
    Misture todas as frutas em uma tigela.
    Regue com mel e delicadamente misture.
    Deixe na geladeira por alguns minutos antes de servir.
    """,
  ),
  Receita(
    fav: false,
    title: "Sopa de Legumes",
    imageLink: "assets/images/sopa-legumes.jpg",
    kcal: 180,
    timeToMake: 30,
    ingredientes: [
      "2 cenouras",
      "2 batatas",
      "1 abobrinha",
      "1 cebola",
      "2 dentes de alho",
      "1 litro de caldo de legumes",
      "Sal e pimenta a gosto",
    ],
    recipe: """
    Descasque e corte todos os legumes em pedaços pequenos.
    Em uma panela, refogue a cebola e o alho em um pouco de azeite.
    Adicione os legumes cortados e o caldo de legumes à panela.
    Cozinhe até que os legumes estejam macios.
    Tempere com sal e pimenta a gosto.
    Sirva quente.
    """,
  ),
  Receita(
    fav: false,
    title: "Risoto de Morango",
    imageLink: "assets/images/risoto-morango.jpg",
    kcal: 250,
    timeToMake: 40,
    ingredientes: [
      "2 xícaras de arroz arbóreo",
      "1 xícara de morangos frescos",
      "1/2 xícara de vinho branco",
      "1 cebola picada",
      "2 colheres de sopa de manteiga",
      "1/2 xícara de queijo parmesão ralado",
      "Sal e pimenta a gosto",
    ],
    recipe: """
    Em uma panela, refogue a cebola em 1 colher de sopa de manteiga até ficar transparente.
    Adicione o arroz e mexa por 1-2 minutos.
    Despeje o vinho branco e mexa até que seja absorvido.
    Adicione água quente, uma concha de cada vez, mexendo constantemente até o arroz ficar al dente.
    Adicione os morangos picados, a manteiga restante e o queijo parmesão.
    Mexa até que tudo esteja bem incorporado.
    Tempere com sal e pimenta a gosto.
    Sirva imediatamente.
    """,
  ),
  Receita(
    fav: false,
    title: "Esfirra de Carne",
    imageLink: "assets/images/esfirra-carne.jpg",
    kcal: 200,
    timeToMake: 35,
    ingredientes: [
      "500g de carne moída",
      "1 cebola picada",
      "2 tomates picados",
      "1/2 xícara de salsinha picada",
      "Massa para esfirra",
      "Sal e pimenta a gosto",
    ],
    recipe: """
    Em uma frigideira, refogue a carne moída, cebola, tomates e salsinha até a carne estar cozida.
    Abra pequenas porções de massa para esfirra e coloque o recheio no centro.
    Feche a massa formando um triângulo e aperte as bordas.
    Asse no forno pré-aquecido a 180°C por 15-20 minutos.
    Sirva quente.
    """,
  ),
  Receita(
    fav: false,
    title: "Bobó de Camarão",
    imageLink: "assets/images/bobo-camarao.jpg",
    kcal: 300,
    timeToMake: 50,
    ingredientes: [
      "500g de camarão descascado",
      "2 batatas",
      "1 cebola",
      "3 dentes de alho",
      "1 pimentão",
      "1 lata de leite de coco",
      "Azeite de dendê",
      "Coentro a gosto",
      "Sal e pimenta a gosto",
    ],
    recipe: """
    Cozinhe as batatas até ficarem macias. Amasse e reserve.
    Em uma panela, refogue a cebola, alho e pimentão em azeite de dendê.
    Adicione os camarões e cozinhe até ficarem rosados.
    Despeje o leite de coco na panela e deixe ferver.
    Adicione as batatas amassadas e cozinhe até engrossar.
    Tempere com sal, pimenta e coentro a gosto.
    Sirva com arroz branco.
    """,
  ),
  Receita(
    fav: false,
    title: "Caipirinha",
    imageLink: "assets/images/caipirinha.jpg",
    kcal: 100,
    timeToMake: 10,
    ingredientes: [
      "1 limão",
      "2 colheres de sopa de açúcar",
      "Gelo",
      "Cachaça",
    ],
    recipe: """
    Corte o limão em pedaços e coloque em um copo.
    Adicione o açúcar e amasse os limões para liberar o suco.
    Adicione gelo e despeje a cachaça sobre os ingredientes.
    Mexa bem e aproveite.
    """,
  ),
  Receita(
    fav: false,
    title: "Temaki Skin",
    imageLink: "assets/images/temaki-skin.jpg",
    kcal: 180,
    timeToMake: 25,
    ingredientes: [
      "Alga nori",
      "Arroz para sushi",
      "Pele de salmão grelhada",
      "Pepino",
      "Abacate",
      "Cream cheese",
      "Molho de soja",
      "Wasabi",
      "Gengibre em conserva",
    ],
    recipe: """
    Coloque uma folha de alga nori sobre uma esteira de bambu.
    Espalhe o arroz para sushi sobre a alga.
    Coloque a pele de salmão grelhada, pepino, abacate e cream cheese no centro.
    Enrole o temaki usando a esteira de bambu.
    Corte em pedaços e sirva com molho de soja, wasabi e gengibre em conserva.
    """,
  ),
  Receita(
    fav: false,
    title: "Pizza Margherita",
    imageLink: "assets/images/pizza-margherita.jpg",
    kcal: 280,
    timeToMake: 35,
    ingredientes: [
      "Massa de pizza",
      "Molho de tomate",
      "Mozzarella",
      "Tomates frescos",
      "Manjericão fresco",
      "Azeite de oliva",
      "Sal",
      "Pimenta",
    ],
    recipe: """
    Abra a massa de pizza em uma forma.
    Espalhe uma camada fina de molho de tomate.
    Cubra com fatias de mozzarella, rodelas de tomate e folhas de manjericão.
    Regue com azeite de oliva e tempere com sal e pimenta.
    Asse no forno pré-aquecido a 220°C até a massa ficar dourada.
    Sirva quente.
    """,
  ),
  Receita(
    fav: false,
    title: "Tiramisu",
    imageLink: "assets/images/tiramisu.jpg",
    kcal: 320,
    timeToMake: 45,
    ingredientes: [
      "4 gemas de ovo",
      "1 xícara de açúcar",
      "1 xícara de café forte",
      "200g de queijo mascarpone",
      "200ml de creme de leite",
      "Biscoitos tipo ladyfinger",
      "Cacau em pó",
    ],
    recipe: """
    Em uma tigela, bata as gemas com o açúcar até obter um creme fofo.
    Adicione o queijo mascarpone e misture bem.
    Em outra tigela, bata o creme de leite até formar picos firmes.
    Incorpore o creme de leite à mistura de gemas e queijo.
    Mergulhe os ladyfingers no café e coloque-os em uma forma.
    Cubra com metade da mistura de queijo e gemas.
    Repita as camadas e finalize polvilhando cacau em pó.
    Leve à geladeira por algumas horas antes de servir.
    """,
  ),
  Receita(
    fav: false,
    title: "Frango Assado",
    imageLink: "assets/images/frango-assado.jpg",
    kcal: 230,
    timeToMake: 55,
    ingredientes: [
      "1 frango inteiro",
      "2 colheres de sopa de manteiga derretida",
      "1 colher de chá de alho em pó",
      "1 colher de chá de páprica",
      "Sal e pimenta a gosto",
    ],
    recipe: """
  Pré-aqueça o forno a 200°C.
  Lave e seque bem o frango.
  Em uma tigela, misture a manteiga derretida, o alho em pó, a páprica, o sal e a pimenta.
  Esfregue a mistura por toda a superfície do frango.
  Coloque o frango em uma assadeira e leve ao forno por 50-60 minutos ou até dourar.
  Certifique-se de que a temperatura interna atinja pelo menos 74°C.
  Deixe descansar por alguns minutos antes de servir.
  """,
  ),
  Receita(
    fav: false,
    title: "Pasta Carbonara",
    imageLink: "assets/images/pasta-carbonara.jpg",
    kcal: 350,
    timeToMake: 30,
    ingredientes: [
      "400g de massa",
      "150g de bacon",
      "2 ovos",
      "1 xícara de queijo parmesão ralado",
      "2 dentes de alho picados",
      "Sal e pimenta a gosto",
    ],
    recipe: """
  Cozinhe a massa de acordo com as instruções da embalagem.
  Em uma frigideira, frite o bacon até ficar crocante. Adicione o alho e refogue por mais 1 minuto.
  Em uma tigela, bata os ovos e misture o queijo parmesão.
  Escorra a massa e reserve um pouco da água do cozimento.
  Misture a massa na frigideira com o bacon e adicione a mistura de ovos e queijo. Mexa bem.
  Se necessário, adicione um pouco da água do cozimento para obter uma consistência cremosa.
  Tempere com sal e pimenta a gosto. Sirva imediatamente.
  """,
  ),
  Receita(
    fav: false,
    title: "Sushi de Salmão",
    imageLink: "assets/images/sushi-salmao.jpg",
    kcal: 180,
    timeToMake: 50,
    ingredientes: [
      "2 xícaras de arroz de sushi cozido",
      "1/4 xícara de vinagre de arroz",
      "1 colher de sopa de açúcar",
      "1 colher de chá de sal",
      "10 folhas de alga nori",
      "200g de salmão fresco, fatiado",
      "1 pepino, cortado em tiras finas",
      "Molho de soja e wasabi para servir",
    ],
    recipe: """
  Em uma tigela pequena, misture o vinagre de arroz, o açúcar e o sal até dissolver.
  Espalhe o arroz cozido em uma bandeja e regue com a mistura de vinagre, mexendo delicadamente para incorporar.
  Coloque uma folha de alga nori em uma esteira de bambu para sushi.
  Molhe as mãos para manusear o arroz e espalhe uma fina camada de arroz sobre a alga.
  Coloque fatias de salmão e tiras de pepino no centro.
  Enrole o sushi com a ajuda da esteira, pressionando suavemente.
  Corte em pedaços e sirva com molho de soja e wasabi.
  """,
  ),
  Receita(
      fav: false,
      title: "Frango ao Curry",
      imageLink: "assets/images/frango-ao-curry.png",
      kcal: 300,
      timeToMake: 40,
      ingredientes: [
        "500g de peito de frango, cortado em cubos",
        "2 colheres de sopa de óleo vegetal",
        "1 cebola, picada",
        "2 dentes de alho, picados",
        "1 colher de sopa de curry em pó",
        "1 colher de chá de açafrão",
        "1 lata de leite de coco",
        "1 xícara de caldo de galinha",
        "Sal e pimenta a gosto",
        "Coentro fresco para decorar",
      ],
      recipe: """
  Em uma panela grande, aqueça o óleo em fogo médio-alto.
  Adicione a cebola e o alho, refogando até ficarem dourados.
  Acrescente o frango e cozinhe até dourar de todos os lados.
  Polvilhe o curry e o açafrão sobre o frango, mexendo bem para incorporar.
  Despeje o leite de coco e o caldo de galinha na panela. Tempere com sal e pimenta a gosto.
  Reduza o fogo e deixe cozinhando por 30 minutos, mexendo ocasionalmente.
  Sirva sobre arroz branco e decore com coentro fresco.
  """),
  Receita(
      fav: false,
      title: "Salada Caprese",
      imageLink: "assets/images/salada-caprese.png",
      kcal: 150,
      timeToMake: 15,
      ingredientes: [
        "4 tomates grandes, fatiados",
        "200g de queijo mussarela, fatiado",
        "Folhas de manjericão fresco",
        "Azeite de oliva extra virgem",
        "Vinagre balsâmico",
        "Sal e pimenta a gosto",
      ],
      recipe: """
  Em um prato grande, alterne fatias de tomate e queijo mussarela.
  Entre as fatias, coloque folhas de manjericão fresco.
  Regue a salada com azeite de oliva e vinagre balsâmico a gosto.
  Tempere com sal e pimenta.
  Deixe a salada descansar por alguns minutos antes de servir para os sabores se combinarem.
  """),
  Receita(
      fav: false,
      title: "Ratatouille",
      imageLink: "assets/images/ratatouille.png",
      kcal: 200,
      timeToMake: 45,
      ingredientes: [
        "1 berinjela, fatiada",
        "1 abobrinha, fatiada",
        "2 tomates, fatiados",
        "1 pimentão vermelho, fatiado",
        "1 cebola, cortada em rodelas",
        "2 dentes de alho, picados",
        "1 lata de tomate pelado",
        "Azeite de oliva",
        "Tomilho fresco",
        "Sal e pimenta a gosto",
      ],
      recipe: """
  Preaqueça o forno a 180°C.
  Em uma assadeira, disponha alternadamente fatias de berinjela, abobrinha, tomate, pimentão e cebola.
  Em uma panela, refogue o alho no azeite de oliva e adicione os tomates pelados, amassando-os com um garfo.
  Tempere com sal, pimenta e tomilho a gosto.
  Despeje o molho de tomate sobre os legumes na assadeira.
  Asse por 30-40 minutos ou até que os legumes estejam macios.
  Sirva quente, regado com azeite de oliva.
  """),
  Receita(
      fav: false,
      title: "Panquecas de Banana",
      imageLink: "assets/images/panquecas-banana.png",
      kcal: 180,
      timeToMake: 20,
      ingredientes: [
        "2 bananas maduras",
        "1 ovo",
        "1 xícara de farinha de trigo",
        "1 colher de chá de fermento em pó",
        "1/2 colher de chá de canela em pó",
        "1/2 xícara de leite",
        "Manteiga para untar a frigideira",
        "Mel ou xarope de bordo para servir",
      ],
      recipe: """
  Em uma tigela, amasse as bananas maduras.
  Adicione o ovo, farinha de trigo, fermento em pó, canela em pó e leite. Misture bem.
  Aqueça uma frigideira e unte com manteiga.
  Despeje porções da massa na frigideira para formar as panquecas.
  Cozinhe até que bolhas apareçam na superfície, vire e cozinhe o outro lado.
  Sirva as panquecas quentes, regadas com mel ou xarope de bordo.
  """),
  Receita(
      fav: false,
      title: "Wrap de Frango com Abacate",
      imageLink: "assets/images/wrap-frango-abacate.jpg",
      kcal: 250,
      timeToMake: 15,
      ingredientes: [
        "Peitos de frango cozidos e desfiados",
        "Abacate maduro, fatiado",
        "Tomate, fatiado",
        "Folhas de alface",
        "Tortilhas de trigo",
        "Molho de iogurte (iogurte natural, limão, coentro)",
        "Sal e pimenta a gosto",
      ],
      recipe: """
  Em uma tortilha, disponha o frango desfiado, fatias de abacate, tomate e folhas de alface.
  Tempere com sal e pimenta a gosto.
  Dobre a tortilha como um envelope.
  Em uma tigela, misture iogurte natural, suco de limão e coentro para fazer o molho.
  Sirva os wraps com o molho de iogurte.
  """),
];
