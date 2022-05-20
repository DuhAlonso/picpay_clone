import 'package:flutter/material.dart';
import 'package:picpay_clone/src/core/ui/my_colors.dart';
import 'package:picpay_clone/src/pages/home/widgets/activity_box_menu_home.dart';
import 'package:picpay_clone/src/pages/home/widgets/banner_home_promo.dart';
import 'package:picpay_clone/src/pages/home/widgets/menu_home_box.dart';
import 'package:picpay_clone/src/pages/home/widgets/suggestion_avatar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var mediaQ = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: MyColors.color.shade800,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 55),
            child: Container(
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Container(
                      //height: mediaQ.height * 0.6,
                      decoration: BoxDecoration(color: MyColors.color.shade800),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://avatars.githubusercontent.com/u/53386801?v=4'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Olá,',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '@duhalonso',
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            color: Colors.white,
                                            size: 15,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.currency_exchange,
                                  color: Colors.white,
                                  size: 22,
                                ),
                                SizedBox(
                                  width: 35,
                                ),
                                Icon(
                                  Icons.forum,
                                  color: Colors.white,
                                  size: 22,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: Divider(
                              height: 1,
                              color: Colors.black.withAlpha(180),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Saldo PicPay",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "R\$  19.512,56",
                                          style: TextStyle(
                                            fontSize: 19,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(
                                          Icons.visibility_off,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Spacer(),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Extrato',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 10),
                            child: Container(
                              height: 100,
                              child: ListView(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                children: [
                                  MenuHomeBox(
                                      title: 'Pix', icon: Icons.open_with),
                                  MenuHomeBox(
                                      title: 'QR\nCode',
                                      icon: Icons.qr_code_scanner_rounded),
                                  MenuHomeBox(
                                      title: 'Pagar\nBoleto',
                                      icon: Icons.receipt),
                                  MenuHomeBox(
                                      title: 'PicPay\nCard',
                                      icon: Icons.credit_card),
                                  MenuHomeBox(
                                      title: 'Pagar\nPessoas',
                                      icon: Icons.price_check),
                                  MenuHomeBox(
                                      title: 'Recarga\nCelular',
                                      icon: Icons.phone_android_rounded),
                                  MenuHomeBox(
                                      title: 'Recarga\nTransporte',
                                      icon: Icons.directions_bus),
                                  MenuHomeBox(
                                      title: 'Pagar\nLocais',
                                      icon: Icons.storefront_outlined),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        color: Colors.black,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                hintText: 'O que você quer encontrar?',
                                hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                labelStyle: TextStyle(color: Colors.white),
                                isDense: true,
                                filled: true,
                                fillColor: Color.fromARGB(199, 80, 93, 108),
                                focusedBorder: OutlineInputBorder(
                                  //borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  //  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "Sugestões para você",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Container(
                              height: 100,
                              child: ListView(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                children: [
                                  SuggestionAvatar(
                                    title: 'Fazer pix com Cartão',
                                    urlAvatar:
                                        'https://pontospravoar.com/wp-content/uploads/2021/07/Capturar.png',
                                  ),
                                  SuggestionAvatar(
                                    title: '@elon.musk',
                                    urlAvatar:
                                        'https://istoe.com.br/wp-content/uploads/sites/14/2022/05/38ca4ee13998c337d61558c6d3b07f48c6f445d4-1-418x235.jpg',
                                  ),
                                  SuggestionAvatar(
                                    title: 'Cartão de Trasnporte',
                                    urlAvatar:
                                        'https://i1.sndcdn.com/avatars-ZyxjsUHtvEzHo4g4-oOv4cA-t240x240.jpg',
                                  ),
                                  SuggestionAvatar(
                                    title: '@jose.pereira',
                                    urlAvatar:
                                        'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_1280.png',
                                  ),
                                  SuggestionAvatar(
                                    title: 'Pagar nas maquininhas',
                                    urlAvatar:
                                        'https://pluga.co/blog/wp-content/uploads/2018/08/qual-melhor-maquina-de-cartao.png',
                                  ),
                                  SuggestionAvatar(
                                    title: 'ifood',
                                    urlAvatar:
                                        'https://www.cidademarketing.com.br/marketing/wp-content/uploads/2021/02/ifood.png',
                                  ),
                                  SuggestionAvatar(
                                    title: '@ti.ventura',
                                    urlAvatar:
                                        'https://blog.portalt5.com.br/clapeclapeclape/wp-content/uploads/sites/25/2022/05/thiago-ventura-chega-a-netflix_380996_36.jpg',
                                  ),
                                  SuggestionAvatar(
                                    title: 'Uber',
                                    urlAvatar:
                                        'https://www.aberje.com.br/wp-content/uploads/2021/04/Uber-Logo3.png',
                                  ),
                                  SuggestionAvatar(
                                    title: 'Netflix',
                                    urlAvatar:
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp0CazCtm3KHnZhXhAmyYX0IJxeSaIPbVMFMXHj8ASl8dwYd_EJVYlypzyHu9A1kYQKwc&usqp=CAU',
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                            child: BannerHomePromo(),
                          )
                        ],
                      ),
                    ),
                  ),
                  SliverPersistentHeader(
                    delegate: Delegate(),
                    pinned: true,
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      color: Colors.black,
                      height: mediaQ.height * 0.120,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Pague suas contas pelo PicPay',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 21),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Parcele em até 12x com qualquer cartão\nde crédito',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      color: Colors.black,
                      height: 180,
                      padding: EdgeInsets.all(10),
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          ActivityBoxMenuHome(
                            title: 'IPTU 2022',
                            urlPhoto:
                                'https://pngpress.com/wp-content/uploads/2020/08/uploads_house_house_PNG17.png',
                          ),
                          ActivityBoxMenuHome(
                            title: 'IPVA 2022',
                            color: Colors.purple[50],
                            urlPhoto:
                                'https://w7.pngwing.com/pngs/192/121/png-transparent-steering-wheel-car-rim-steering-wheel-driving-photography-car.png',
                          ),
                          ActivityBoxMenuHome(
                            title: 'Matrícula da escola ou faculdade',
                            urlPhoto:
                                'https://cdn-icons-png.flaticon.com/512/2097/2097072.png',
                          ),
                          ActivityBoxMenuHome(
                            title: 'Material escolar',
                            urlPhoto:
                                'https://img.freepik.com/vetores-gratis/coleta-de-material-escolar_1234-45.jpg',
                          ),
                          ActivityBoxMenuHome(
                            title: 'Viagens',
                            color: Colors.amber[100],
                            urlPhoto:
                                'https://w7.pngwing.com/pngs/170/266/png-transparent-travel-vacation-summer-orange-suitcase-bag.png',
                          ),
                          ActivityBoxMenuHome(
                            title: 'Seguros',
                            color: Colors.purple[200],
                            urlPhoto:
                                'https://www.nancyseguros.com.br/img/diferenciais.png',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      height: 27,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      color: Colors.black,
                      child: Container(
                        height: 5,
                        color: Colors.blueGrey[600]!.withAlpha(150),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      color: Colors.black,
                      height: mediaQ.height * 0.120,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Aproveite as vantagens',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 21),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Conheça as opções de pagar, receber e\ntransferir, tudo pelo app',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      color: Colors.black,
                      height: 190,
                      padding: EdgeInsets.all(10),
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          ActivityBoxMenuHome(
                            title: 'Deixe seu dinheiro rendendo 105% do CDI',
                            color: Colors.purple[100],
                            urlPhoto:
                                'https://cdn-icons-png.flaticon.com/512/3310/3310653.png',
                          ),
                          ActivityBoxMenuHome(
                            title: 'Cashback: pague e ganhe dinheiro de volta',
                            color: Colors.yellow[50],
                            urlPhoto:
                                'https://media.istockphoto.com/vectors/cashback-concept-smartphone-with-button-get-started-the-cashback-vector-id1334302963?b=1&k=20&m=1334302963&s=170667a&w=0&h=OHYeGgQ29vafpb7VcGwvUMr1HH7GGytKErjvPbptdK0=',
                          ),
                          ActivityBoxMenuHome(
                            color: Colors.purple[200],
                            title: 'Adicione dinheiro e pague o quiser',
                            urlPhoto:
                                'https://cdn-icons-png.flaticon.com/512/5163/5163814.png',
                          ),
                          ActivityBoxMenuHome(
                            color: Colors.green,
                            title: 'Encontre e pague locais próximos a você',
                            urlPhoto:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbcaenTheVnklIc2-vWZnkDdbkYyu4n2MSiA&usqp=CAU',
                          ),
                          ActivityBoxMenuHome(
                            title:
                                'Pix: transfira ou receba dinheiro a qualquer hora',
                            color: Colors.amber[100],
                            urlPhoto:
                                'https://logospng.org/download/pix/logo-pix-icone-512.png',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      height: 27,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      color: Colors.black,
                      child: Container(
                        height: 5,
                        color: Colors.blueGrey[600]!.withAlpha(150),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      color: Colors.black,
                      height: mediaQ.height * 0.120,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Compre créditos e aproveite',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward,
                                color: MyColors.color,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Seja Gift Card, recarga ou cupom, encontre\ncréditos para o que você precisa',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      color: Colors.black,
                      height: 200,
                      padding: EdgeInsets.all(10),
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          ActivityBoxMenuHome(
                            title: 'Recarga de celular',
                            color: Colors.purple[100],
                            subTitle: 'Vivo, Claro, Tim, Oi e outras',
                            isTwoLines: true,
                            urlPhoto:
                                'https://djpdv.com.br/wp-content/uploads/2020/02/Claro-Oi-Tim-Vivo-e-Nextel-Aprenda-como-negociar-d%C3%ADvida-com-operadora-de-celular-1.png',
                          ),
                          ActivityBoxMenuHome(
                            title: 'iFood',
                            color: Colors.purple[100],
                            subTitle: 'Compre créditos e faça seu pedido',
                            isTwoLines: true,
                            urlPhoto:
                                'https://www.cidademarketing.com.br/marketing/wp-content/uploads/2021/02/ifood.png',
                          ),
                          ActivityBoxMenuHome(
                            title: 'PS Store',
                            color: Colors.purple[100],
                            subTitle:
                                'Compre Gift Card para a loja do PlayStation',
                            isTwoLines: true,
                            urlPhoto:
                                'https://cdn.vox-cdn.com/thumbor/BkWmOWbSdJ0QFn01b455Kj7w15E=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/22405993/playstation_store.jpg',
                          ),
                          ActivityBoxMenuHome(
                            title: 'Netflix',
                            color: Colors.purple[100],
                            subTitle:
                                'Compre créditos e assista filmes e séries',
                            isTwoLines: true,
                            urlPhoto:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp0CazCtm3KHnZhXhAmyYX0IJxeSaIPbVMFMXHj8ASl8dwYd_EJVYlypzyHu9A1kYQKwc&usqp=CAU',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      height: 27,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      color: Colors.black,
                      child: Container(
                        height: 5,
                        color: Colors.blueGrey[600]!.withAlpha(150),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      color: Colors.black,
                      height: mediaQ.height * 0.120,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Site da loja com cashback',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward,
                                color: MyColors.color,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Compre o que quiser no site da loja e ganhe\ncashback. Confira!',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      color: Colors.black,
                      height: 200,
                      padding: EdgeInsets.all(10),
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          ActivityBoxMenuHome(
                            title: 'Amazon',
                            color: Colors.blueGrey[700],
                            contentButton: true,
                            urlPhoto:
                                'https://upload.wikimedia.org/wikipedia/commons/d/de/Amazon_icon.png',
                          ),
                          ActivityBoxMenuHome(
                            title: 'Shopee',
                            color: Colors.purple[100],
                            contentButton: true,
                            urlPhoto:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNyZf0xJnMzcvqAk1QyMXvvWNTwFdT405JQbApxfPf2_ZphBtq8sVCDqvOPFPVAYN-XWw&usqp=CAU',
                          ),
                          ActivityBoxMenuHome(
                            title: 'Netshoes',
                            color: Colors.purple[100],
                            contentButton: true,
                            urlPhoto:
                                'https://lh3.googleusercontent.com/iI9LKipr3q2FHuO1frpcNfEAphA1HLzS5qYTiG1p6ZxHTxx1vp_jESrb-xOw64WYZtI',
                          ),
                          ActivityBoxMenuHome(
                            title: 'AliExpress',
                            color: Colors.purple[100],
                            contentButton: true,
                            urlPhoto:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNJEtwuNdGdYmq4XXfrbYDZQNDwx_81y085hexoH_VHYGdUAE5sVoo4CFeiK8jgPMfPPA&usqp=CAU',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      height: 27,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      color: Colors.black,
                      child: Container(
                        height: 5,
                        color: Colors.blueGrey[600]!.withAlpha(150),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      color: Colors.black,
                      height: mediaQ.height * 0.120,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Mais mobilidade para você',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 21),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Serviços para ir e voltar de qualquer lugar',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      color: Colors.black,
                      height: 190,
                      padding: EdgeInsets.all(10),
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          ActivityBoxMenuHome(
                            title: 'Recarregue seu cartão de transporte',
                            color: Colors.purple[100],
                            urlPhoto:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5aqPnzvdRxZiQVaovKey1L-60zmfsTMldvlwc6MMxR4Mf-cjnmIQUn_WUCoNSCqFfqkQ&usqp=CAU',
                          ),
                          ActivityBoxMenuHome(
                            title: 'Compre créditos para o Uber no PicPay',
                            color: Colors.yellow[50],
                            urlPhoto:
                                'https://logodownload.org/wp-content/uploads/2015/05/uber-logo-1-1.png',
                          ),
                          ActivityBoxMenuHome(
                            color: Colors.purple[200],
                            title: 'Shell Box: abasteça e pague pelo celular',
                            urlPhoto:
                                'https://play-lh.googleusercontent.com/FrSwdzib9XbPQO-DhGhzN1uAXwEbmDhZIZHS7nBCACPqFPYJW2_DA6qyFGJsVW7toQ',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      height: 27,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      color: Colors.black,
                      child: Container(
                        height: 5,
                        color: Colors.blueGrey[600]!.withAlpha(150),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: MyColors.color.shade800,
            height: 50,
          )
        ],
      ),
    );
  }
}

class Delegate extends SliverPersistentHeaderDelegate {
  Delegate();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.black,
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Text(
            'Atividades',
            style: TextStyle(color: Colors.white),
          ),
          Spacer(),
          TextButton(onPressed: () {}, child: Text('Todas')),
          TextButton(
              onPressed: () {},
              child: Text(
                'Minhas',
                style: TextStyle(color: Colors.white),
              )),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 45;

  @override
  double get minExtent => 45;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
