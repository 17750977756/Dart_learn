import 'spacecraft.dart';

void main() {
  // 已发射的飞船
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  print(''); // 换行

  // 未发射的飞船
  var unlaunched = Spacecraft.unlaunched('Future Explorer');
  unlaunched.describe();
}
