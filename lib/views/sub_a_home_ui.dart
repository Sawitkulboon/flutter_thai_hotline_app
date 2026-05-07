import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/models/phone_fast_1.dart';
import 'package:flutter_thai_hotline_app/views/a_detail_ui.dart';

class SubAHomeUi extends StatefulWidget {
  const SubAHomeUi({super.key});

  @override
  State<SubAHomeUi> createState() => _SubAHomeUiState();
}

class _SubAHomeUiState extends State<SubAHomeUi> {
  List<PhoneFast1> phoneFast1 = [
    PhoneFast1(
      image: 'assets/images/1146.png',
      name: 'กรมทางหลวงชนบท',
      number: '1146',
    ),
    PhoneFast1(
      image: 'assets/images/1155.png',
      name: 'ตำรวจท่องเที่ยว',
      number: '1155',
    ),
    PhoneFast1(
      image: 'assets/images/1193.png',
      name: 'ตำรวจทางหลวง',
      number: '1193',
    ),
    PhoneFast1(
      image: 'assets/images/1197.jpg',
      name: 'ข้อมูลจราจร',
      number: '1197',
    ),
    PhoneFast1(
      image: 'assets/images/1348.png',
      name: 'ขสมก',
      number: '1348',
    ),
    PhoneFast1(
      image: 'assets/images/1490.png',
      name: 'บขส',
      number: '1490',
    ),
    PhoneFast1(
      image: 'assets/images/1543.png',
      name: 'เส้นทางบนทางด่วน',
      number: '1543',
    ),
    PhoneFast1(
      image: 'assets/images/1586.png',
      name: 'กรมทางหลวง',
      number: '1586',
    ),
    PhoneFast1(
      image: 'assets/images/1690.png',
      name: 'การรถไฟแห่งประเทศไทย',
      number: '1690',
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
                      'assets/images1/A.jpg',
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
                    itemCount: phoneFast1.length,
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
                              phoneFast1[index].image!,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),

                          // --- ส่วนชื่อ ---
                          title: Text(
                            phoneFast1[index].name!,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),

                          // --- ส่วนเบอร์โทร (เปลี่ยนสีให้เด่นขึ้น) ---
                          subtitle: Text(
                            phoneFast1[index].number!,
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
                                builder: (context) => ADetailUi(
                                  phoneFast1: phoneFast1[index],
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
