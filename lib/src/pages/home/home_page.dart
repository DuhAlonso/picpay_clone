import 'package:flutter/material.dart';
import 'package:picpay_clone/src/core/ui/my_colors.dart';
import 'package:picpay_clone/src/pages/home/widgets/activity_box_menu_home.dart';
import 'package:picpay_clone/src/pages/home/widgets/banner_home_promo.dart';
import 'package:picpay_clone/src/pages/home/widgets/central_donnation.dart';
import 'package:picpay_clone/src/pages/home/widgets/menu_home_box.dart';
import 'package:picpay_clone/src/pages/home/widgets/suggestion_avatar.dart';
import 'package:picpay_clone/src/pages/home/widgets/transanctions_tile.dart';
import 'package:picpay_clone/src/core/app_data/app_data.dart' as app_data;

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
            child: SizedBox(
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
                                const CircleAvatar(
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
                                      const Text(
                                        'Olá,',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Row(
                                        children: const [
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
                                const Spacer(),
                                const Icon(
                                  Icons.currency_exchange,
                                  color: Colors.white,
                                  size: 22,
                                ),
                                const SizedBox(
                                  width: 35,
                                ),
                                const Icon(
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
                                    const Text(
                                      "Saldo PicPay",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Row(
                                      children: const [
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
                                const Spacer(),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
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
                            child: SizedBox(
                              height: 100,
                              child: ListView(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                children: const [
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
                      decoration: const BoxDecoration(
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
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.fromLTRB(
                                    20.0, 15.0, 20.0, 15.0),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                hintText: 'O que você quer encontrar?',
                                hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                labelStyle:
                                    const TextStyle(color: Colors.white),
                                isDense: true,
                                filled: true,
                                fillColor:
                                    const Color.fromARGB(199, 80, 93, 108),
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
                          const Text(
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
                            child: SizedBox(
                              height: 100,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: app_data.suggestion.length,
                                itemBuilder: (context, index) {
                                  return SuggestionAvatar(
                                    model: app_data.suggestion[index],
                                  );
                                },
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
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
                        children: const [
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
                      padding: const EdgeInsets.all(10),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: app_data.activityMenu.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return ActivityBoxMenuHome(
                              model: app_data.activityMenu[index]);
                        },
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
                        children: const [
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
                      padding: const EdgeInsets.all(10),
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: app_data.activityMenu2.length,
                          itemBuilder: (context, index) {
                            return ActivityBoxMenuHome(
                                model: app_data.activityMenu2[index]);
                          }),
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
                            children: const [
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
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
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
                      padding: const EdgeInsets.all(10),
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: app_data.activityMenu3.length,
                        itemBuilder: (context, index) {
                          return ActivityBoxMenuHome(
                              model: app_data.activityMenu3[index]);
                        },
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
                            children: const [
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
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
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
                      padding: const EdgeInsets.all(10),
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: app_data.activityMenu4.length,
                        itemBuilder: (context, index) {
                          return ActivityBoxMenuHome(
                              model: app_data.activityMenu4[index]);
                        },
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
                        children: const [
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
                      padding: const EdgeInsets.all(10),
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: app_data.activityMenu5.length,
                        itemBuilder: (context, index) {
                          return ActivityBoxMenuHome(
                              model: app_data.activityMenu5[index]);
                        },
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
                      height: 170,
                      padding: const EdgeInsets.all(10),
                      color: Colors.black,
                      child: const CentralDonnation(),
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
                      padding: const EdgeInsets.only(bottom: 10),
                      color: Colors.black,
                      child: ListView.separated(
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return TransanctionsTile(
                                transctionModel: app_data.transactions[index]);
                          },
                          itemCount: app_data.transactions.length,
                          separatorBuilder: (context, index) {
                            return Container(
                              height: 27,
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              color: Colors.black,
                              child: Container(
                                height: 5,
                                color: Colors.blueGrey[600]!.withAlpha(150),
                              ),
                            );
                          }),
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
          const SizedBox(
            width: 10,
          ),
          const Text(
            'Atividades',
            style: TextStyle(color: Colors.white),
          ),
          const Spacer(),
          TextButton(onPressed: () {}, child: const Text('Todas')),
          TextButton(
              onPressed: () {},
              child: const Text(
                'Minhas',
                style: TextStyle(color: Colors.white),
              )),
          const SizedBox(
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
