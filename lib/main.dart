import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MagicShell());
}

class MagicShell extends StatefulWidget {
  @override
  State<MagicShell> createState() => _MagicShellState();
}

class _MagicShellState extends State<MagicShell> {
  String path = 'images/ask_the_magic_conch.jpg';   // 初始化照片
  String answer = '你為什麼不問問神奇海螺呢';   // 初始化文字
  int counter = 0;  // 按第幾次

  int accounts = 0;

  void getAnswer() {
    if (counter == 0) {
      // 如果counter 是 0 => 更改成  ' 你為什麼不問問神奇海螺呢 ' 的圖片
      answer = '你為什麼不問問神奇海螺呢';
      path = 'images/ask_the_magic_conch.jpg';
    } else if (counter == 1){
      // 如果counter 是 1 => 更改成  ' 最好別吃 ' 的圖片
      answer = "最好別吃";
      path = "images/better_not.png";
    } else if(counter == 2){
      // 如果counter 是 2 => 更改成  ' 不行 ' 的圖片
      answer = "不行";
      path = "images/can't.png";
    } if (counter == 3) {
      answer = "對";
      path = "images/yes.png";
    } else if (counter == 4) {
      answer = "不行";
      path = "images/can't_2.png";
    } else if (counter == 5) {
      answer = "可以";
      path = "images/can.png";
    } else if (counter == 6) {
      answer = "都不吃";
      path = "images/don't_eat.png";
    } else if (counter == 7) {
      answer = "可能會吧";
      path = "images/maybe.png";
    } else if (counter == 8) {
      answer = "坐好";
      path = "images/sit_down.png";
    } else if (counter == 9) {
      answer = "坐好";
      path = "images/sit_down_2.png";
    } else if (counter == 10) {
      answer = "你再問問看";
      path = "images/try_again.png";
      counter = 0; // 因為圖片只有11張，所以重置counter的值回第一張
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Magic Shell',
            style: GoogleFonts.aboreto(),
          ),
        ),
        body: Column(
          children: [
            Image.asset(path),  // 海綿寶寶圖片
            const SizedBox(
              height: 150,
            ),
            Text(
              answer, // 神奇海螺的回答
              style: const TextStyle(fontSize: 30.0),  // 調整字型大小
            ),
            const SizedBox(height: 50.0,),
            IconButton(
              onPressed: () {
                counter = counter + 1;  // counter + 1 就可以切下一張圖片
                getAnswer();  // 執行最上面我們寫的函式
                setState(() {});  // 告訴flutter 我們要更新現在的文字跟圖片（狀態）
              },
              icon: const Icon(
                Icons.mic_rounded,
              ),
              iconSize: 120,
            ),
          ],
        ),
      ),
    );
  }
}
