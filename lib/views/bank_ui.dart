import 'package:flutter/material.dart';

import '../models/hotline.dart';
import '../widgets/hotline_widgets.dart';

// สายด่วน ธนาคาร
class BankUI extends StatelessWidget {
  const BankUI({super.key});

  static const List<Hotline> hotlines = [
    Hotline(
      name: 'ธนาคารกรุงเทพ',
      number: '1333',
      image: 'assets/images/bank/bank_1.png',
    ),
    Hotline(
      name: 'ธนาคารออมสิน',
      number: '1115',
      image: 'assets/images/bank/bank_2.png',
    ),
    Hotline(
      name: 'ธนาคารกสิกรไทย',
      number: '0-2888-8888',
      image: 'assets/images/bank/bank_3.png',
    ),
    Hotline(
      name: 'ธนาคารกรุงไทย',
      number: '0-2111-1111',
      image: 'assets/images/bank/bank_4.png',
    ),
    Hotline(
      name: 'ธนาคารกรุงศรีอยุธยา',
      number: '1572',
      image: 'assets/images/bank/bank_5.png',
    ),
    Hotline(
      name: 'ธนาคารทีเอ็มบีธนชาต',
      number: '1428',
      image: 'assets/images/bank/bank_6.png',
    ),
    Hotline(
      name: 'ธนาคารซิตี้แบงก์',
      number: '1588',
      image: 'assets/images/bank/bank_7.png',
    ),
    Hotline(
      name: 'ธนาคารแลนด์ แอนด์ เฮ้าส์',
      number: '1327',
      image: 'assets/images/bank/bank_8.png',
    ),
    Hotline(
      name: 'ธนาคารอาคารสงเคราะห์',
      number: '0-2645-9000',
      image: 'assets/images/bank/bank_9.png',
    ),
    Hotline(
      name: 'ธนาคารไทยพาณิชย์',
      number: '0-2777-7777',
      image: 'assets/images/bank/bank_10.png',
    ),
    Hotline(
      name: 'ธนาคารเกียรตินาคินภัทร',
      number: '0-2165-5555',
      image: 'assets/images/bank/bank_11.png',
    ),
    Hotline(
      name: 'ธนาคารไทยเครดิต',
      number: '0-2697-5454',
      image: 'assets/images/bank/bank_12.png',
    ),
    Hotline(
      name: 'ธนาคารยูโอบี',
      number: '0-2285-1555',
      image: 'assets/images/bank/bank_13.png',
    ),
    Hotline(
      name: 'ธนาคารทิสโก้',
      number: '0-2633-6000',
      image: 'assets/images/bank/bank_14.png',
    ),
    Hotline(
      name: 'ธนาคารอิสลามแห่งประเทศไทย',
      number: '0-2204-2766',
      image: 'assets/images/bank/bank_15.png',
    ),
    Hotline(
      name: 'ธนาคารซีไอเอ็มบี ไทย',
      number: '0-2626-7777',
      image: 'assets/images/bank/bank_16.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return const HotlineListView(
      category: 'ธนาคาร',
      banner: 'assets/images/bank/bank_0.png',
      hotlines: hotlines,
    );
  }
}
