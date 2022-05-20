import 'package:flutter/material.dart';

class PsersistentMenuHome extends StatefulWidget {
  const PsersistentMenuHome({Key? key}) : super(key: key);

  @override
  State<PsersistentMenuHome> createState() => _PsersistentMenuHomeState();
}

class _PsersistentMenuHomeState extends State<PsersistentMenuHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            expandedHeight: 160.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Goa', textScaleFactor: 1),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              color: Colors.purple,
              child: const Text('teste'),
            ),
          ),
          SliverPersistentHeader(
            delegate: Delegate(Colors.red, 'Teste'),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, int index) {
                return ListTile(
                  leading: Container(
                      padding: const EdgeInsets.all(8),
                      width: 100,
                      child: const Placeholder()),
                  title: Text('Place ${index + 1}', textScaleFactor: 2),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class Delegate extends SliverPersistentHeaderDelegate {
  final Color backgroundColor;
  final String headerTitle;

  Delegate(this.backgroundColor, this.headerTitle);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: backgroundColor,
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...List.generate(20, (index) => index).map(
                  (e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        CircleAvatar(),
                        Text('XXXX'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  double get maxExtent => 150;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
