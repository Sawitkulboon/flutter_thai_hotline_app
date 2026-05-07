import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/models/phone_fast_4.dart';
import 'package:flutter_thai_hotline_app/views/d_detail_ui.dart';

class SubDHomeUi extends StatefulWidget {
  const SubDHomeUi({super.key});

  @override
  State<SubDHomeUi> createState() => _SubDHomeUiState();
}

class _SubDHomeUiState extends State<SubDHomeUi> {
  List<PhoneFast4> phoneFast4 = [
    PhoneFast4(
      image: 'assets/images4/1130.jpg',
      name: 'ไฟฟ้านครหลวง',
      number: '1130',
    ),
    PhoneFast4(
      image: 'assets/images4/1662.jpg',
      name: 'การประปาส่วนภูมิภาค',
      number: '1662',
    ),
    PhoneFast4(
      image: 'assets/images4/1416.png',
      name: 'ไฟฟ้าฝ่ายผลิต',
      number: '1416',
    ),
    PhoneFast4(
      image: 'assets/images4/mwa.png',
      name: 'การประปานครหลวง',
      number: '1125',
    ),
    PhoneFast4(
      image: 'assets/images4/pea.jpg',
      name: 'ไฟฟ้าส่วนภูมิภาค',
      number: '1129',
    ),
    PhoneFast4(
      image: 'assets/images4/true.jpg',
      name: 'true',
      number: '1242',
    ),
    PhoneFast4(
      image: 'assets/images4/dtac.jpg',
      name: 'dtac',
      number: '1678',
    ),
    PhoneFast4(
      image: 'assets/images4/ais.jpg',
      name: 'AIS',
      number: '1175',
    ),
    PhoneFast4(
      image: 'assets/images4/tot.jpg',
      name: 'TOT',
      number: '1100',
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
                      'assets/images1/D.jpg',
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
                    itemCount: phoneFast4.length,
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
                              phoneFast4[index].image!,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),

                          // --- ส่วนชื่อ ---
                          title: Text(
                            phoneFast4[index].name!,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),

                          // --- ส่วนเบอร์โทร (เปลี่ยนสีให้เด่นขึ้น) ---
                          subtitle: Text(
                            phoneFast4[index].number!,
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
                                builder: (context) => DDetailUi(
                                  phoneFast4: phoneFast4[index],
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
