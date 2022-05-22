import 'package:flutter/material.dart';
import 'package:picpay_clone/src/models/activity_menu_model.dart';
import 'package:picpay_clone/src/models/suggestion_model.dart';
import 'package:picpay_clone/src/models/transction_model.dart';

final List<TransctionModel> transactions = <TransctionModel>[
  TransctionModel(
    urlAvatar:
        'https://noticiasdemogi.com.br/wp-content/uploads/2021/06/cartao-credito-picpay.png',
    value: 189.90,
    description: 'esteve em',
    fromUser: 'Você',
    toUser: 'Cento Automotivo',
    days: 2,
    period: 'dias',
    likes: 0,
    comments: 0,
  ),
  TransctionModel(
    urlAvatar: 'https://logospng.org/download/pix/logo-pix-icone-1024.png',
    value: 69.90,
    description: 'enviou um',
    fromUser: 'Você',
    toUser: 'PIX',
    days: 4,
    period: 'dias',
    likes: 0,
    comments: 0,
  ),
  TransctionModel(
    urlAvatar:
        'https://noticiasdemogi.com.br/wp-content/uploads/2021/06/cartao-credito-picpay.png',
    value: 10.50,
    description: 'esteve em',
    fromUser: 'Você',
    toUser: 'Pg *cantina Zé',
    days: 5,
    period: 'dias',
    likes: 0,
    comments: 0,
  ),
  TransctionModel(
    urlAvatar:
        'https://noticiasdemogi.com.br/wp-content/uploads/2021/06/cartao-credito-picpay.png',
    value: 350.00,
    description: 'esteve em',
    fromUser: 'Você',
    toUser: 'Vet Animal Feliz',
    days: 1,
    period: 'semana',
    likes: 0,
    comments: 0,
  ),
  TransctionModel(
      urlAvatar: 'https://logospng.org/download/pix/logo-pix-icone-1024.png',
      value: 300.00,
      description: 'recebeu um',
      fromUser: 'Você',
      toUser: 'Pix',
      days: 1,
      period: 'semana',
      likes: 0,
      comments: 0,
      isdeposit: true),
  TransctionModel(
    urlAvatar: 'https://logospng.org/download/pix/logo-pix-icone-1024.png',
    value: 58.90,
    description: 'enviou um',
    fromUser: 'Você',
    toUser: 'Pix',
    days: 2,
    period: 'semana',
    likes: 0,
    comments: 0,
  ),
  TransctionModel(
    urlAvatar:
        'https://noticiasdemogi.com.br/wp-content/uploads/2021/06/cartao-credito-picpay.png',
    value: 905.90,
    description: 'esteve em',
    fromUser: 'Você',
    toUser: 'Mercadinho green',
    days: 2,
    period: 'semana',
    likes: 0,
    comments: 0,
  ),
  TransctionModel(
    urlAvatar:
        'https://pixel.cuboup.com/wp-content/uploads/edd/2021/08/Icone-Codigo-de-Barras-1.jpg',
    value: 189.90,
    description: 'pagou um',
    fromUser: 'Você',
    toUser: 'Boleto',
    days: 2,
    period: 'dias',
    likes: 0,
    comments: 0,
  ),
  TransctionModel(
    urlAvatar:
        'https://noticiasdemogi.com.br/wp-content/uploads/2021/06/cartao-credito-picpay.png',
    value: 19000.90,
    description: 'esteve em',
    fromUser: 'Você',
    toUser: 'Honda',
    days: 1,
    period: 'mês',
    likes: 0,
    comments: 0,
  ),
  TransctionModel(
    urlAvatar: 'https://logospng.org/download/pix/logo-pix-icone-1024.png',
    value: 7.000,
    description: 'recebeu um',
    fromUser: 'Você',
    toUser: 'Pix',
    days: 2,
    period: 'mês',
    likes: 0,
    comments: 0,
  ),
  TransctionModel(
    urlAvatar:
        'https://noticiasdemogi.com.br/wp-content/uploads/2021/06/cartao-credito-picpay.png',
    value: 240.90,
    description: 'esteve em',
    fromUser: 'Você',
    toUser: 'Cento Automotivo Shell',
    days: 2,
    period: 'meses',
    likes: 0,
    comments: 0,
  ),
  TransctionModel(
    urlAvatar: 'https://logospng.org/download/pix/logo-pix-icone-1024.png',
    value: 4000.90,
    description: 'enviou um',
    fromUser: 'Você',
    toUser: 'Pix',
    days: 3,
    period: 'meses',
    likes: 0,
    comments: 0,
  ),
  TransctionModel(
    urlAvatar:
        'https://noticiasdemogi.com.br/wp-content/uploads/2021/06/cartao-credito-picpay.png',
    value: 4999.90,
    description: 'esteve em',
    fromUser: 'Você',
    toUser: 'CVC Passagens',
    days: 4,
    period: 'meses',
    likes: 0,
    comments: 0,
  ),
  TransctionModel(
      urlAvatar: 'https://logospng.org/download/pix/logo-pix-icone-1024.png',
      value: 4000.90,
      description: 'recebeu um',
      fromUser: 'Você',
      toUser: 'Pix',
      days: 4,
      period: 'meses',
      likes: 0,
      comments: 0,
      isdeposit: true),
];

final List<SuggestionModel> suggestion = <SuggestionModel>[
  SuggestionModel(
    title: 'Fazer pix com Cartão',
    urlAvatar:
        'https://pontospravoar.com/wp-content/uploads/2021/07/Capturar.png',
  ),
  SuggestionModel(
    title: '@elon.musk',
    urlAvatar:
        'https://istoe.com.br/wp-content/uploads/sites/14/2022/05/38ca4ee13998c337d61558c6d3b07f48c6f445d4-1-418x235.jpg',
  ),
  SuggestionModel(
    title: 'Cartão de Trasnporte',
    urlAvatar:
        'https://i1.sndcdn.com/avatars-ZyxjsUHtvEzHo4g4-oOv4cA-t240x240.jpg',
  ),
  SuggestionModel(
    title: '@jose.pereira',
    urlAvatar:
        'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_1280.png',
  ),
  SuggestionModel(
    title: 'Pagar nas maquininhas',
    urlAvatar:
        'https://pluga.co/blog/wp-content/uploads/2018/08/qual-melhor-maquina-de-cartao.png',
  ),
  SuggestionModel(
    title: 'ifood',
    urlAvatar:
        'https://www.cidademarketing.com.br/marketing/wp-content/uploads/2021/02/ifood.png',
  ),
  SuggestionModel(
    title: '@ti.ventura',
    urlAvatar:
        'https://blog.portalt5.com.br/clapeclapeclape/wp-content/uploads/sites/25/2022/05/thiago-ventura-chega-a-netflix_380996_36.jpg',
  ),
  SuggestionModel(
    title: 'Uber',
    urlAvatar:
        'https://www.aberje.com.br/wp-content/uploads/2021/04/Uber-Logo3.png',
  ),
  SuggestionModel(
    title: 'Netflix',
    urlAvatar:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp0CazCtm3KHnZhXhAmyYX0IJxeSaIPbVMFMXHj8ASl8dwYd_EJVYlypzyHu9A1kYQKwc&usqp=CAU',
  )
];

final List<ActivityMenuModel> activityMenu = <ActivityMenuModel>[
  ActivityMenuModel(
    title: 'IPTU 2022',
    urlPhoto:
        'https://pngpress.com/wp-content/uploads/2020/08/uploads_house_house_PNG17.png',
  ),
  ActivityMenuModel(
    title: 'IPVA 2022',
    color: Colors.purple[50],
    urlPhoto:
        'https://w7.pngwing.com/pngs/192/121/png-transparent-steering-wheel-car-rim-steering-wheel-driving-photography-car.png',
  ),
  ActivityMenuModel(
    title: 'Matrícula da escola ou faculdade',
    urlPhoto: 'https://cdn-icons-png.flaticon.com/512/2097/2097072.png',
  ),
  ActivityMenuModel(
    title: 'Material escolar',
    urlPhoto:
        'https://img.freepik.com/vetores-gratis/coleta-de-material-escolar_1234-45.jpg',
  ),
  ActivityMenuModel(
    title: 'Viagens',
    color: Colors.amber[100],
    urlPhoto:
        'https://w7.pngwing.com/pngs/170/266/png-transparent-travel-vacation-summer-orange-suitcase-bag.png',
  ),
  ActivityMenuModel(
    title: 'Seguros',
    color: Colors.purple[200],
    urlPhoto: 'https://www.nancyseguros.com.br/img/diferenciais.png',
  ),
];

final List<ActivityMenuModel> activityMenu2 = <ActivityMenuModel>[
  ActivityMenuModel(
    title: 'Deixe seu dinheiro rendendo 105% do CDI',
    color: Colors.purple[100],
    urlPhoto: 'https://cdn-icons-png.flaticon.com/512/3310/3310653.png',
  ),
  ActivityMenuModel(
    title: 'Cashback: pague e ganhe dinheiro de volta',
    color: Colors.yellow[50],
    urlPhoto:
        'https://media.istockphoto.com/vectors/cashback-concept-smartphone-with-button-get-started-the-cashback-vector-id1334302963?b=1&k=20&m=1334302963&s=170667a&w=0&h=OHYeGgQ29vafpb7VcGwvUMr1HH7GGytKErjvPbptdK0=',
  ),
  ActivityMenuModel(
    color: Colors.purple[200],
    title: 'Adicione dinheiro e pague o quiser',
    urlPhoto: 'https://cdn-icons-png.flaticon.com/512/5163/5163814.png',
  ),
  ActivityMenuModel(
    color: Colors.green,
    title: 'Encontre e pague locais próximos a você',
    urlPhoto:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbcaenTheVnklIc2-vWZnkDdbkYyu4n2MSiA&usqp=CAU',
  ),
  ActivityMenuModel(
    title: 'Pix: transfira ou receba dinheiro a qualquer hora',
    color: Colors.amber[100],
    urlPhoto: 'https://logospng.org/download/pix/logo-pix-icone-512.png',
  ),
];

final List<ActivityMenuModel> activityMenu3 = <ActivityMenuModel>[
  ActivityMenuModel(
    title: 'Recarga de celular',
    color: Colors.purple[100],
    subTitle: 'Vivo, Claro, Tim, Oi e outras',
    isTwoLines: true,
    urlPhoto:
        'https://djpdv.com.br/wp-content/uploads/2020/02/Claro-Oi-Tim-Vivo-e-Nextel-Aprenda-como-negociar-d%C3%ADvida-com-operadora-de-celular-1.png',
  ),
  ActivityMenuModel(
    title: 'iFood',
    color: Colors.purple[100],
    subTitle: 'Compre créditos e faça seu pedido',
    isTwoLines: true,
    urlPhoto:
        'https://www.cidademarketing.com.br/marketing/wp-content/uploads/2021/02/ifood.png',
  ),
  ActivityMenuModel(
    title: 'PS Store',
    color: Colors.purple[100],
    subTitle: 'Compre Gift Card para a loja do PlayStation',
    isTwoLines: true,
    urlPhoto:
        'https://cdn.vox-cdn.com/thumbor/BkWmOWbSdJ0QFn01b455Kj7w15E=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/22405993/playstation_store.jpg',
  ),
  ActivityMenuModel(
    title: 'Netflix',
    color: Colors.purple[100],
    subTitle: 'Compre créditos e assista filmes e séries',
    isTwoLines: true,
    urlPhoto:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp0CazCtm3KHnZhXhAmyYX0IJxeSaIPbVMFMXHj8ASl8dwYd_EJVYlypzyHu9A1kYQKwc&usqp=CAU',
  ),
];

final List<ActivityMenuModel> activityMenu4 = <ActivityMenuModel>[
  ActivityMenuModel(
    title: 'Amazon',
    color: Colors.blueGrey[700],
    contentButton: true,
    urlPhoto:
        'https://upload.wikimedia.org/wikipedia/commons/d/de/Amazon_icon.png',
  ),
  ActivityMenuModel(
    title: 'Shopee',
    color: Colors.purple[100],
    contentButton: true,
    urlPhoto:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNyZf0xJnMzcvqAk1QyMXvvWNTwFdT405JQbApxfPf2_ZphBtq8sVCDqvOPFPVAYN-XWw&usqp=CAU',
  ),
  ActivityMenuModel(
    title: 'Netshoes',
    color: Colors.purple[100],
    contentButton: true,
    urlPhoto:
        'https://lh3.googleusercontent.com/iI9LKipr3q2FHuO1frpcNfEAphA1HLzS5qYTiG1p6ZxHTxx1vp_jESrb-xOw64WYZtI',
  ),
  ActivityMenuModel(
    title: 'AliExpress',
    color: Colors.purple[100],
    contentButton: true,
    urlPhoto:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNJEtwuNdGdYmq4XXfrbYDZQNDwx_81y085hexoH_VHYGdUAE5sVoo4CFeiK8jgPMfPPA&usqp=CAU',
  ),
];

final List<ActivityMenuModel> activityMenu5 = <ActivityMenuModel>[
  ActivityMenuModel(
    title: 'Recarregue seu cartão de transporte',
    color: Colors.purple[100],
    urlPhoto:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5aqPnzvdRxZiQVaovKey1L-60zmfsTMldvlwc6MMxR4Mf-cjnmIQUn_WUCoNSCqFfqkQ&usqp=CAU',
  ),
  ActivityMenuModel(
    title: 'Compre créditos para o Uber no PicPay',
    color: Colors.yellow[50],
    urlPhoto:
        'https://logodownload.org/wp-content/uploads/2015/05/uber-logo-1-1.png',
  ),
  ActivityMenuModel(
    color: Colors.purple[200],
    title: 'Shell Box: abasteça e pague pelo celular',
    urlPhoto:
        'https://play-lh.googleusercontent.com/FrSwdzib9XbPQO-DhGhzN1uAXwEbmDhZIZHS7nBCACPqFPYJW2_DA6qyFGJsVW7toQ',
  ),
];
