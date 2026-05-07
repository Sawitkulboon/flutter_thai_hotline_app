import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/views/about_ui.dart';
import 'package:flutter_thai_hotline_app/views/sub_a_home_ui.dart';
import 'package:flutter_thai_hotline_app/views/sub_b_home_ui.dart';
import 'package:flutter_thai_hotline_app/views/sub_c_home_ui.dart';
import 'package:flutter_thai_hotline_app/views/sub_d_home_ui.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  //เก็บหมายเลฃ Index เพื่อเอาไปใช้ในการเปลี่ยนหน้า barItem
  int selectedIndex = 0;

  //สร้างตัวแปรสําหรับเก็บหน้าจอเอาไว้ใช้กับ Body
  List subPage = [
    SubAHomeUi(),
    SubBHomeUi(),
    SubCHomeUi(),
    SubDHomeUi(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //ส่วนของ Appbar -----
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'THAI HOTLINE APP',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.info, size: 30),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutUi(),
                ),
              );
            },
          ),
        ],
      ),
      //ส่วนของ BottomNavigationBar -----
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.train),
            label: 'การเดินทาง',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_crash),
            label: 'อุบัติเหตุ-เหตุฉุกเฉิน',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'ธนาคาร',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.volunteer_activism),
            label: 'สาธารณูปโภค',
          ),
        ],
      ),
      //ส่วนของ Body -----
      body: subPage[selectedIndex],
    );
  }
}
