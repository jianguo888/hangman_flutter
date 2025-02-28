/*
 * Copyright (c) 2024 坚果派
 * 微信公众号：nutpi
 * 官网：https://www.nutpi.net/
 */

import 'package:flutter/material.dart';
import 'package:hangman_game_tut/ui/colors.dart';

// letter组件用于显示单个字母
// 在游戏中有两个用途：
// 1. 显示待猜测单词的字母（可隐藏）
// 2. 显示字母选择按钮
// @param character: 要显示的字母
// @param hidden: 是否隐藏字母，用于待猜测单词的显示
Widget letter(String character, bool hidden) {
  return Container(
    height: 65,
    width: 50,
    padding: EdgeInsets.all(12.0),
    // 使用深色背景和圆角边框
    decoration: BoxDecoration(
      color: AppColor.primaryColorDark,
      borderRadius: BorderRadius.circular(4.0),
    ),
    // 使用Visibility控制字母的显示/隐藏
    child: Visibility(
      visible: !hidden,
      child: Text(
        character,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 40.0,
        ),
      ),
    ),
  );
}
