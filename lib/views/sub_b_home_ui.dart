import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/models/phone_fast_2.dart';
import 'package:flutter_thai_hotline_app/views/b_detail_ui.dart';

class SubBHomeUi extends StatefulWidget {
  const SubBHomeUi({super.key});

  @override
  State<SubBHomeUi> createState() => _SubBHomeUiState();
}

class _SubBHomeUiState extends State<SubBHomeUi> {
  List<PhoneFast2> phoneFast2 = [
    PhoneFast2(
        image: 'assets/images2/191.jpg',
        name: 'เหตุด่วนเหตุร้าย',
        number: '191'),
    PhoneFast2(
        image: 'assets/images2/199.png',
        name: 'แจ้งไฟใหม้สัตว์เข้าบ้าน',
        number: '199'),
    PhoneFast2(
        image: 'assets/images2/1192.jpg',
        name: 'สายด่วนรถหาย(ตำรวจแห่งชาติ)',
        number: '1192'),
    PhoneFast2(
        image: 'assets/images2/1196.png',
        name: 'อุบัติเหตุดทางน้ำ',
        number: '1196'),
    PhoneFast2(
        image: 'assets/images2/1300.png', name: 'แจ้งคนหาย', number: '1300'),
    PhoneFast2(
        image: 'assets/images2/1356.png',
        name: 'ศูนย์ปลอดภัยคมนาคม',
        number: '1356'),
    PhoneFast2(
        image: 'assets/images2/1554.jpg',
        name: 'หน่วยแพทย์กู้ฉีพ',
        number: '1554'),
    PhoneFast2(
        image: 'assets/images2/1646.jpg', name: 'ศูนย์เอราวัณ', number: '1646'),
    PhoneFast2(
        image: 'assets/images2/1669.png',
        name: 'เจ็บป่วยฉุกเฉิน',
        number: '1669'),
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
                      'assets/images1/B.png',
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
                    itemCount: phoneFast2.length,
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
                              phoneFast2[index].image!,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),

                          // --- ส่วนชื่อ ---
                          title: Text(
                            phoneFast2[index].name!,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),

                          // --- ส่วนเบอร์โทร (เปลี่ยนสีให้เด่นขึ้น) ---
                          subtitle: Text(
                            phoneFast2[index].number!,
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
                                builder: (context) => BDetailUi(
                                  phoneFast2: phoneFast2[index],
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
