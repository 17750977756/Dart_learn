// main.dart

// 导入核心库 math，用于使用 pi、sqrt 等函数
import 'dart:math';

// 导入 test 包中的测试方法
import 'package:test/test.dart';

// 导入你自己定义的其他文件中的函数
import 'my_other_file.dart';

void main() {
  // 使用 dart:math 中的 sqrt 函数计算平方根
  double radius = 5;
  double area = pi * pow(radius, 2); // 圆的面积
  print('Circle area with radius $radius: ${area.toStringAsFixed(2)}');

  // 调用自己写的函数
  int sum = add(10, 20);
  print('10 + 20 = $sum');

  // 测试部分（注意：test() 函数运行时用 dart test 触发）
  test('Test add() function', () {
    expect(add(2, 3), equals(5));
    expect(add(0, 0), equals(0));
  });

  test('Test area calculation', () {
    expect(area > 75 && area < 79, isTrue); // 大概 78.54
  });
}
