import 'package:flutter/material.dart';

import '../models/hotline.dart';
import '../widgets/hotline_widgets.dart';

// สายด่วน สาธารณูปโภค
class PubUI extends StatelessWidget {
  const PubUI({super.key});

  static const List<Hotline> hotlines = [
    Hotline(
      name: 'การไฟฟ้านครหลวง',
      number: '1130',
      image: 'assets/images/pubutil/pub_1.png',
    ),
    Hotline(
      name: 'การไฟฟ้าส่วนภูมิภาค',
      number: '1129',
      image: 'assets/images/pubutil/pub_2.png',
    ),
    Hotline(
      name: 'การไฟฟ้าฝ่ายผลิต',
      number: '1416',
      image: 'assets/images/pubutil/pub_3.png',
    ),
    Hotline(
      name: 'การประปานครหลวง',
      number: '1125',
      image: 'assets/images/pubutil/pub_4.png',
    ),
    Hotline(
      name: 'การประปาส่วนภูมิภาค',
      number: '1662',
      image: 'assets/images/pubutil/pub_5.png',
    ),
    Hotline(
      name: 'ทรูมูฟ เอช',
      number: '1242',
      image: 'assets/images/pubutil/pub_6.png',
    ),
    Hotline(
      name: 'ดีแทค',
      number: '1678',
      image: 'assets/images/pubutil/pub_7.png',
    ),
    Hotline(
      name: 'เอไอเอส',
      number: '1175',
      image: 'assets/images/pubutil/pub_8.png',
    ),
    Hotline(
      name: 'ทีโอที',
      number: '1100',
      image: 'assets/images/pubutil/pub_9.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return const HotlineListView(
      category: 'สาธารณูปโภค',
      banner: 'assets/images/pubutil/pub_0.png',
      hotlines: hotlines,
    );
  }
}
