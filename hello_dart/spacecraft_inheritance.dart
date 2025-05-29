// 定义一个基础类 Spacecraft（航天器）
class Spacecraft {
  String name;             // 航天器名字
  DateTime? launchDate;    // 发射时间（可为 null）

  // 只读属性：获取发射年份
  int? get launchYear => launchDate?.year;

  // 构造函数
  Spacecraft(this.name, this.launchDate);

  // 命名构造函数：未发射航天器
  Spacecraft.unlaunched(String name) : this(name, null);

  // 打印航天器信息
  void describe() {
    print('Spacecraft: $name');
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

// 定义一个扩展类 Orbiter（轨道飞行器），继承自 Spacecraft
class Orbiter extends Spacecraft {
  double altitude; // 轨道高度（单位：千米）

  // 构造函数：使用 super 传递 name 和 launchDate 给父类，同时初始化 altitude
  Orbiter(super.name, super.launchDate, this.altitude);

  // 覆盖 describe 方法，添加 altitude 输出
  @override
  void describe() {
    super.describe(); // 先调用父类的 describe()
    print('Altitude: ${altitude.toStringAsFixed(1)} km');
  }
}

void main() {
  // 创建 Spacecraft 实例
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  print('\n');

  // 创建 Orbiter 实例
  var marsOrbiter = Orbiter('Mars Orbiter Mission', DateTime(2013, 11, 5), 7800);
  marsOrbiter.describe();

  print('\n');

  // 使用未发射的构造函数
  var testProbe = Spacecraft.unlaunched('Test Probe');
  testProbe.describe();
}
