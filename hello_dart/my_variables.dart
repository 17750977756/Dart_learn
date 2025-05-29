// Dart 程序入口函数，类似于其他语言中的 main 函数
void main() {
  // 定义一个变量 name，表示航天器名称。类型是 String。
  var name = 'Voyager I';

  // 定义变量 year，表示发射年份。类型是 int。
  var year = 1977;

  // 定义变量 antennaDiameter，表示天线直径（单位：米）。类型是 double。
  var antennaDiameter = 3.7;

  // 定义列表 flybyObjects，表示航天器飞掠的行星。类型是 List<String>。
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];

  // 定义映射 image，表示图片的相关信息。类型是 Map<String, dynamic>。
  var image = {
    'tags': ['saturn'],                // 图片的标签列表（这里只有一个标签'saturn'）
    'url': '//path/to/saturn.jpg',     // 图片的相对路径 URL
  };

  // 打印航天器名称
  print('Spacecraft: $name');

  // 打印发射年份
  print('Launch year: $year');

  // 打印天线直径（单位：米）
  print('Antenna diameter: ${antennaDiameter}m');

  // 使用 join 方法将列表元素连接为字符串，并打印飞掠的行星
  print('Visited: ${flybyObjects.join(', ')}');

  // 打印图片标签（使用 Map 的取值方式）
  print('Image tags: ${image['tags']}');

  // 打印图片的 URL
  print('Image URL: ${image['url']}');
}
