// 定义 Spacecraft 类
class Spacecraft {
  String name;               // 飞船名称
  DateTime? launchDate;      // 发射日期，可为空

  // 只读属性，返回发射年份（如果存在）
  int? get launchYear => launchDate?.year;

  // 构造函数，使用参数直接赋值
  Spacecraft(this.name, this.launchDate);

  // 命名构造函数，表示尚未发射的飞船
  Spacecraft.unlaunched(String name) : this(name, null);

  // 实例方法：打印描述信息
  void describe() {
    print('Spacecraft: $name');

    // 获取局部变量以便进行 null 检查
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}
