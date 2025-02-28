/*
 * Copyright (c) 2024 坚果派
 * 微信公众号：nutpi
 * 官网：https://www.nutpi.net/
 *
 * 这是一个简单的Hangman（刽子手）游戏应用
 * 玩家需要猜测隐藏的单词，每次猜错一个字母，刽子手图像就会逐步显示
 * 游戏结束条件：成功猜出单词或刽子手图像完全显示（6次失败机会）
 */

import 'package:flutter/material.dart';
import 'ui/colors.dart';
import 'ui/widget/figure_image.dart';
import 'ui/widget/letter.dart';
import 'utils/game.dart';

// 应用入口函数
void main() {
  runApp(const MyApp());
}

// 应用根组件
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeApp(),
    );
  }
}

// 游戏主页面组件
class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  // 游戏的目标单词，玩家需要猜这个词
  String word = "Flutter".toUpperCase();

  // 字母表，用于生成可选择的字母按钮
  List<String> alphabets = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      appBar: AppBar(
        title: Text("刽子手游戏"),
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColor.primaryColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              children: [
                // 刽子手图像组件
                // 根据游戏尝试次数（Game.tries）逐步显示不同部分
                figureImage(Game.tries >= 0, "assets/hang.png"), // 绞刑架
                figureImage(Game.tries >= 1, "assets/head.png"), // 头部
                figureImage(Game.tries >= 2, "assets/body.png"), // 身体
                figureImage(Game.tries >= 3, "assets/ra.png"), // 右手
                figureImage(Game.tries >= 4, "assets/la.png"), // 左手
                figureImage(Game.tries >= 5, "assets/rl.png"), // 右腿
                figureImage(Game.tries >= 6, "assets/ll.png"), // 左腿
              ],
            ),
          ),

          //Now we will build the Hidden word widget
          //now let's go back to the Game class and add
          // a new variable to store the selected character
          /* and check if it's on the word */
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: word
                .split('')
                .map((e) => letter(e.toUpperCase(),
                    !Game.selectedChar.contains(e.toUpperCase())))
                .toList(),
          ),

          //Now let's build the Game keyboard
          SizedBox(
            width: double.infinity,
            height: 250.0,
            child: GridView.count(
              crossAxisCount: 7,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
              padding: EdgeInsets.all(8.0),
              children: alphabets.map((e) {
                return RawMaterialButton(
                  onPressed: Game.selectedChar.contains(e)
                      ? null // we first check that we didn't selected the button before
                      : () {
                          setState(() {
                            Game.selectedChar.add(e);
                            print(Game.selectedChar);
                            if (!word.split('').contains(e.toUpperCase())) {
                              Game.tries++;
                            }
                          });
                        },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Text(
                    e,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  fillColor: Game.selectedChar.contains(e)
                      ? Colors.black87
                      : Colors.blue,
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
