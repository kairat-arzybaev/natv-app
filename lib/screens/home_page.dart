import 'package:flutter/material.dart';
import 'package:natv_app/screens/banner_ad_tab.dart';
import 'package:natv_app/screens/ticker_ad_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TabBar(
                controller: _tabController,
                indicator: const BoxDecoration(
                    border: Border(
                        top: BorderSide(color: Color(0xFFC20937), width: 4))),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: const Color(0xFFC20937),
                unselectedLabelColor: const Color(0xFFC0C0C0),
                tabs: <Widget>[
                  Tab(
                    height: 75,
                    child: Text(
                      'Размещение строчного объявления'.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                  Tab(
                    height: 75,
                    child: Text(
                      'Размещение баннерной рекламы'.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                ]),
            Expanded(
              child: TabBarView(
                  controller: _tabController,
                  children: const <Widget>[TickerAdTab(), BannerAdTab()]),
            )
          ],
        ),
      ),
    );
  }
}
