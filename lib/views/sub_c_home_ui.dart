import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/models/phone_fast_3.dart';
import 'package:flutter_thai_hotline_app/views/c_detail_ui.dart';

class SubCHomeUi extends StatefulWidget {
  const SubCHomeUi({super.key});

  @override
  State<SubCHomeUi> createState() => _SubCHomeUiState();
}

class _SubCHomeUiState extends State<SubCHomeUi> {
  List<PhoneFast3> phoneFast3 = [
    PhoneFast3(
      image: 'assets/images3/1111.jpg',
      name: 'ธนาคารกรุงไทย',
      number: '021111111',
    ),
    PhoneFast3(
      image: 'assets/images3/1115.jpg',
      name: 'ธนาคารออมสิน',
      number: '1115',
    ),
    PhoneFast3(
      image: 'assets/images3/1327.jpg',
      name: 'ธนาคารแลนด์ แอนด์ เฮาส์',
      number: '1327',
    ),
    PhoneFast3(
      image: 'assets/images3/1333.png',
      name: 'ธนาคารกรุงเทพ',
      number: '1333',
    ),
    PhoneFast3(
      image: 'assets/images3/1428.jpg',
      name: 'ธนาคาร ทีเอ็มบี ธนชาต',
      number: '1428',
    ),
    PhoneFast3(
      image: 'assets/images3/1572.png',
      name: 'ธนาคารกรุงศรี',
      number: '1572',
    ),
    PhoneFast3(
      image: 'assets/images3/1588.jpg',
      name: 'citybank',
      number: '1588',
    ),
    PhoneFast3(
      image: 'assets/images3/2766.png',
      name: 'ธนาคารอิสลาม',
      number: '022042766',
    ),
    PhoneFast3(
      image: 'assets/images3/5454.jpg',
      name: 'ธนาคารไทยเครดิต',
      number: '026975454',
    ),
    PhoneFast3(
      image: 'assets/images3/5555.jpeg',
      name: 'KIATNAKIN PHATRA',
      number: '021655555',
    ),
    PhoneFast3(
      image: 'assets/images3/6000.jpg',
      name: 'TISCO',
      number: '026336000',
    ),
    PhoneFast3(
      image: 'assets/images3/7777.jpg',
      name: 'ธนาคาร ซีไอเอ็มบี ไทย',
      number: '026267777',
    ),
    PhoneFast3(
      image: 'assets/images3/9000.jpg',
      name: 'ธนาคารอาคารสงเคราะห์',
      number: '026459000',
    ),
    PhoneFast3(
      image: 'assets/images3/kbank.jpg',
      name: 'ธนาคารกสิกรไทย',
      number: '028888888',
    ),
    PhoneFast3(
      image: 'assets/images3/scb.png',
      name: 'ธนาคารกรุงไทย',
      number: '1333',
    ),
    PhoneFast3(
      image: 'assets/images3/uob.jpg',
      name: 'UOB',
      number: '026336000',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'สายด่วน',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'การเดินทาง',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20), // มุมโค้ง
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.3),
                        blurRadius: 15,
                        offset: Offset(0, 8),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images1/C.jpg',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                //สว่วนของListView
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: ListView.builder(
                    // 1. เปลี่ยนจาก separated เป็น builder
                    itemCount: phoneFast3.length,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8), // เพิ่มขอบซ้ายขวาให้หน้าจอ
                    itemBuilder: (context, index) {
                      return Card(
                        // 2. เอา Card มาครอบ ListTile
                        elevation: 2, // เพิ่มเงาบางๆ ให้ดูมีมิติ
                        margin: const EdgeInsets.only(
                            bottom: 12), // ระยะห่างระหว่างการ์ดแต่ละใบ
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(15), // ขอบการ์ดโค้งมน
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),

                          // --- ส่วนรูปภาพ (ปรับให้ขอบมนนิดๆ ด้วย ClipRRect) ---
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              phoneFast3[index].image!,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),

                          // --- ส่วนชื่อ ---
                          title: Text(
                            phoneFast3[index].name!,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),

                          // --- ส่วนเบอร์โทร (เปลี่ยนสีให้เด่นขึ้น) ---
                          subtitle: Text(
                            phoneFast3[index].number!,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.deepOrange, // สีส้มเข้ากับธีมแอป
                            ),
                          ),

                          // --- ไอคอนโทรศัพท์ (ใส่กรอบวงกลมสีเขียวอ่อน) ---
                          trailing: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.green.withOpacity(0.1),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.phone,
                              color: Colors.green[600], // ไอคอนสีเขียวดูน่ากด
                            ),
                          ),

                          // --- โค้ดกดไปหน้า ADetailUi (ใช้ของเดิม) ---
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CDetailUi(
                                  phoneFast3: phoneFast3[index],
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
