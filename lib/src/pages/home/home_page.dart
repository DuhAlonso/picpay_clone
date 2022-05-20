import 'package:flutter/material.dart';
import 'package:picpay_clone/src/core/ui/my_colors.dart';
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
                      height: 200,
                      color: Colors.purple,
                      child: const Text('teste'),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      height: 200,
                      color: Colors.purple,
                      child: const Text('teste'),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      height: 200,
                      color: Colors.purple,
                      child: const Text('teste'),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      height: 200,
                      color: Colors.purple,
                      child: const Text('teste'),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      height: 200,
                      color: Colors.purple,
                      child: const Text('teste'),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      height: 200,
                      color: Colors.purple,
                      child: const Text('teste'),
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
