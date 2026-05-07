// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/models/phone_fast_4.dart';
import 'package:url_launcher/url_launcher.dart';

class DDetailUi extends StatefulWidget {
  PhoneFast4? phoneFast4;

  DDetailUi({super.key, this.phoneFast4});

  @override
  State<DDetailUi> createState() => _DDetailUiState();
}

class _DDetailUiState extends State<DDetailUi> {
  void _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          widget.phoneFast4!.name!,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      //ส่วนของ Body
      //ส่วนของ Body
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Card(
              // เพิ่ม Card มาครอบเนื้อหา
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 40.0, horizontal: 24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // --- ส่วนที่ 1: รูปภาพ ---
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 15,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      // ใช้ ClipOval เพื่อให้รูปภาพที่โหลดมากลายเป็นวงกลม
                      child: ClipOval(
                        child: Image.asset(
                          widget.phoneFast4!.image!,
                          width: 150, // ปรับขนาดรูปลงมานิดหน่อยให้สมดุลกับการ์ด
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),

                    // --- ส่วนที่ 2: ชื่อ ---
                    Text(
                      widget.phoneFast4!.name!,
                      textAlign: TextAlign.center, // จัดให้อยู่กึ่งกลาง
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors
                            .black87, // ปรับเป็นสีดำอ่อนลงนิดนึงให้ดูละมุน
                      ),
                    ),
                    const SizedBox(height: 8),

                    // เพิ่มข้อความบอกให้กดเล็กๆ
                    const Text(
                      'แตะที่ปุ่มด้านล่างเพื่อโทรออก',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 32),

                    // --- ส่วนที่ 3: ปุ่มโทรศัพท์ (คงฟังก์ชันเดิมไว้) ---
                    SizedBox(
                      width: double.infinity, // ทำให้ปุ่มกว้างเต็มการ์ด
                      height: 60,
                      child: ElevatedButton.icon(
                        // เปลี่ยนเป็น .icon เพื่อให้ใส่รูปไอคอนง่ายขึ้น
                        onPressed: () {
                          // ใช้ฟังก์ชันโทรออกของเดิมของคุณ
                          _makePhoneCall(widget.phoneFast4!.number!);
                        },
                        icon: const Icon(
                          Icons.call,
                          size: 28,
                          color: Colors.white,
                        ),
                        label: Text(
                          widget.phoneFast4!.number!,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1.5, // เพิ่มช่องว่างระหว่างตัวเลข
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green[600],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          elevation: 3,
                        ),
                      ),
                    ),
                  ],
                ), // Column
              ), // Padding
            ), // Card
          ), // Padding
        ), // Center
      ), // SingleChildScrollView
    );
  }
}
