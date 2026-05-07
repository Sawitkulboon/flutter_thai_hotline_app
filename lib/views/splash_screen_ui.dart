import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/views/home_ui.dart';


class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  void initState() {
    // หน่วงเวลาหน้าจอ 3 วินาที แล้วเปลี่ยนหน้าไป HomeUi แบบย้อนกลับไม่ได้
    Future.delayed(
      //เวลาที่จะหน่วง
      Duration(seconds: 3),
      //พอครบเวลาให้เปลี่ยนหน้า
      (){
      //เปิดไปหน้า HomeUi แบบย้อนกลับไม่ได้
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUi(),
          ),
        );
      }
    );
    super.initState();
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 133, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 40),
            Text(
              'THAI HOTLINE APP',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'สายด่วน',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}