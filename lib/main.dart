import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'service/magic_shell_generator.dart';
import 'model/magic_shell.dart';

void main() => runApp(const MagicShell());

class MagicShell extends StatefulWidget {
  const MagicShell({super.key});

  @override
  State<MagicShell> createState() => _MagicShellState();
}
class _MagicShellState extends State<MagicShell> {
  final MagicShellGenerator _service = MagicShellGenerator();
  late MagicShellModel _magicShell;


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
            Image.asset(_magicShell.path), // 海綿寶寶圖片
            const SizedBox(
              height: 150,
            ),
            Text(
              _magicShell.answer, // 神奇海螺的回答
              style: const TextStyle(fontSize: 30.0), // 調整字型大小
            ),
            const SizedBox(
              height: 50.0,
            ),
            IconButton(
              onPressed: () {
                _magicShell = _service.getMagicShell();
                setState(() {}); // 告訴flutter 我們要更新現在的文字跟圖片（狀態）
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
