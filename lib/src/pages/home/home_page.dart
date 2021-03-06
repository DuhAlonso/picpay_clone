import 'package:flutter/cupertino.dart';
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
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    var mediaQ = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: MyColors.color.shade500,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45),
            child: SizedBox(
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Container(
                      //height: mediaQ.height * 0.6,
                      decoration: BoxDecoration(color: MyColors.color.shade500),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                            child: Row(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(3.5),
                                      height: 60,
                                      width: 60,
                                      child: const CircleAvatar(
                                          radius: 50,
                                          backgroundImage: NetworkImage(
                                              'https://avatars.githubusercontent.com/u/53386801?v=4')),
                                    ),
                                    SizedBox(
                                      height: 60,
                                      width: 60,
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          width: 32,
                                          height: 15,
                                          decoration: BoxDecoration(
                                              color: MyColors.color[200],
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(5)),
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 2)),
                                          child: const Text(
                                            'PRO',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 09,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Ol??,',
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
                                  CupertinoIcons.bubble_left_bubble_right,
                                  color: Colors.white,
                                  size: 22,
                                ),
                                const SizedBox(
                                  width: 15,
                                )
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
                                      children: [
                                        const Text(
                                          "R\$ ",
                                          style: TextStyle(
                                            fontSize: 19,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          isVisible
                                              ? "19.512,56"
                                              : ' ----------------',
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing:
                                                  isVisible ? null : -5),
                                        ),
                                        IconButton(
                                          visualDensity:
                                              const VisualDensity(vertical: -4),
                                          padding: EdgeInsets.zero,
                                          onPressed: () {
                                            setState(() {
                                              isVisible = !isVisible;
                                            });
                                          },
                                          icon: isVisible
                                              ? const Icon(
                                                  Icons.visibility_off_outlined)
                                              : const Icon(
                                                  Icons.visibility_outlined),
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
                                      primary: Colors.white,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 24),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
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
                                hintText: 'O que voc?? quer encontrar?',
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
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Sugest??es para voc??",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
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
                            'Parcele em at?? 12x com qualquer cart??o\nde cr??dito',
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
                            'Conhe??a as op????es de pagar, receber e\ntransferir, tudo pelo app',
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
                                'Compre cr??ditos e aproveite',
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
                            'Seja Gift Card, recarga ou cupom, encontre\ncr??ditos para o que voc?? precisa',
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
                            'Mais mobilidade para voc??',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 21),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Servi??os para ir e voltar de qualquer lugar',
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
            color: MyColors.color.shade500,
            height: 40,
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
