/*
 * Copyright (c) 2024 坚果派
 * 微信公众号：nutpi
 * 官网：https://www.nutpi.net/
 *
 * Game类用于管理游戏的核心状态
 * 包括玩家的尝试次数和已选择的字母
 */

class Game {
  // 记录玩家猜错的次数，达到6次则游戏结束
  // 每次猜错，刽子手图像会增加一个部分
  static int tries = 0;

  // 存储玩家已经选择过的字母
  // 用于防止重复选择和显示字母按钮的状态
  static List<String> selectedChar = [];
}
