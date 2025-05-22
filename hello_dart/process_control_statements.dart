void main() {
  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg',
  };

  // 条件判断：判断年份属于哪个世纪
  if (year >= 2001) {
    print('21st century'); // 如果是 2001 年或以后，打印 21 世纪
  } else if (year >= 1901) {
    print('20th century'); // 否则如果是 1901 年及以后，打印 20 世纪
  }

  // 使用 for-in 循环遍历 flybyObjects 列表
  for (final object in flybyObjects) {
    print(object); // 依次打印每个飞掠的星球名称
  }

  // 使用传统 for 循环打印 1 到 12，对应 12 个月份
  for (int month = 1; month <= 12; month++) {
    print(month); // 打印当前月份的数字
  }

  // 使用 while 循环将 year 从当前年份递增到 2016（不包含打印）
  while (year < 2016) {
    year += 1; // 每次循环让年份 +1，直到到达 2016
  }

  // 最后打印更新后的年份
  print('Final year: $year');
}
