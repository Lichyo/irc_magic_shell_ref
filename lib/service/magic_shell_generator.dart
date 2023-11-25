import 'package:irc_magic_shell/model/magic_shell.dart';

class MagicShellGenerator {
  final MagicShellModel _magicShell = MagicShellModel(
    answer: '你為什麼不問問神奇海螺呢',
    path: 'images/ask_the_magic_conch.jpg',
  );
  int _counter = 0;

  MagicShellModel getMagicShell() {
    _counter++;
    if (_counter == 0) {
      // 如果counter 是 0 => 更改成  ' 你為什麼不問問神奇海螺呢 ' 的圖片
      _magicShell.answer = '你為什麼不問問神奇海螺呢';
      _magicShell.path = 'images/ask_the_magic_conch.jpg';
    } else if (_counter == 1) {
      // 如果counter 是 1 => 更改成  ' 最好別吃 ' 的圖片
      _magicShell.answer = "最好別吃";
      _magicShell.path = "images/better_not.png";
    } else if (_counter == 2) {
      // 如果counter 是 2 => 更改成  ' 不行 ' 的圖片
      _magicShell.answer = "不行";
      _magicShell.path = "images/can't.png";
    } else if (_counter == 3) {
      _magicShell.answer = "對";
      _magicShell.path = "images/yes.png";
    } else if (_counter == 4) {
      _magicShell.answer = "不行";
      _magicShell.path = "images/can't_2.png";
    } else if (_counter == 5) {
      _magicShell.answer = "可以";
      _magicShell.path = "images/can.png";
    } else if (_counter == 6) {
      _magicShell.answer = "都不吃";
      _magicShell.path = "images/don't_eat.png";
    } else if (_counter == 7) {
      _magicShell.answer = "可能會吧";
      _magicShell.path = "images/maybe.png";
    } else if (_counter == 8) {
      _magicShell.answer = "坐好";
      _magicShell.path = "images/sit_down.png";
    } else if (_counter == 9) {
      _magicShell.answer = "坐好";
      _magicShell.path = "images/sit_down_2.png";
    } else if (_counter == 10) {
      _magicShell.answer = "你再問問看";
      _magicShell.path = "images/try_again.png";
      _counter = 0; // 因為圖片只有11張，所以重置counter的值回第一張
    }
    return _magicShell;
  }
}
