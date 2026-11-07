import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/hotline_widgets.dart';
import 'about_ui.dart';
import 'bank_ui.dart';
import 'emg_ui.dart';
import 'pub_ui.dart';
import 'travel_ui.dart';

// หน้าหลัก: AppBar + BottomNavigationBar สลับหน้า Travel, Emg, Bank, Pub
class HomeUI extends StatefulWidget {
  const HomeUI({super.key, this.initialIndex = 0});

  // แท็บที่เปิดเป็นแท็บแรก (0 = การเดินทาง)
  final int initialIndex;

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  late int _currentIndex = widget.initialIndex;

  final List<Widget> _pages = const [TravelUI(), EmgUI(), BankUI(), PubUI()];

  // โหลดโลโก้ทุกหน้าไว้ก่อน จะได้ไม่ขึ้นช่องว่างตอนสลับแท็บ
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final all = [
      ...TravelUI.hotlines,
      ...EmgUI.hotlines,
      ...BankUI.hotlines,
      ...PubUI.hotlines,
    ];
    for (final hotline in all) {
      precacheImage(AssetImage(hotline.image), context);
    }
    for (final banner in [
      'travel/travel_0',
      'emergency/emg_0',
      'bank/bank_0',
      'pubutil/pub_0',
    ]) {
      precacheImage(AssetImage('assets/images/$banner.png'), context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBar,
        centerTitle: true,
        title: Text(
          'สายด่วน THAILAND',
          style: GoogleFonts.kanit(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            tooltip: 'ผู้จัดทำ',
            icon: const Icon(Icons.error_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutUI()),
              );
            },
          ),
        ],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: AppColors.unselected,
        selectedLabelStyle: GoogleFonts.kanit(
          fontSize: 11,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: GoogleFonts.kanit(fontSize: 11),
        items: const [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: FaIcon(FontAwesomeIcons.car),
            ),
            label: 'การเดินทาง',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: FaIcon(FontAwesomeIcons.truckMedical),
            ),
            label: 'อุบัติเหตุ-เหตุฉุกเฉิน',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: FaIcon(FontAwesomeIcons.buildingColumns),
            ),
            label: 'ธนาคาร',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: FaIcon(FontAwesomeIcons.plug),
            ),
            label: 'สาธารณูปโภค',
          ),
        ],
      ),
    );
  }
}
