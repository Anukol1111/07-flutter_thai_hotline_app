import 'package:flutter/material.dart';

import '../models/hotline.dart';
import '../widgets/hotline_widgets.dart';

// สายด่วน การเดินทาง
class TravelUI extends StatelessWidget {
  const TravelUI({super.key});

  static const List<Hotline> hotlines = [
    Hotline(
      name: 'กรมทางหลวงชนบท',
      number: '1146',
      image: 'assets/images/travel/travel_1.png',
    ),
    Hotline(
      name: 'ตำรวจท่องเที่ยว',
      number: '1155',
      image: 'assets/images/travel/travel_2.png',
    ),
    Hotline(
      name: 'ตำรวจทางหลวง',
      number: '1193',
      image: 'assets/images/travel/travel_3.png',
    ),
    Hotline(
      name: 'ข้อมูลจราจร',
      number: '1197',
      image: 'assets/images/travel/travel_4.png',
    ),
    Hotline(
      name: 'ขสมก.',
      number: '1348',
      image: 'assets/images/travel/travel_5.png',
    ),
    Hotline(
      name: 'บขส.',
      number: '1490',
      image: 'assets/images/travel/travel_6.png',
    ),
    Hotline(
      name: 'เส้นทางบนทางด่วน',
      number: '1543',
      image: 'assets/images/travel/travel_7.png',
    ),
    Hotline(
      name: 'กรมทางหลวง',
      number: '1586',
      image: 'assets/images/travel/travel_8.png',
    ),
    Hotline(
      name: 'การรถไฟแห่งประเทศไทย',
      number: '1690',
      image: 'assets/images/travel/travel_9.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return const HotlineListView(
      category: 'การเดินทาง',
      banner: 'assets/images/travel/travel_0.png',
      hotlines: hotlines,
    );
  }
}
