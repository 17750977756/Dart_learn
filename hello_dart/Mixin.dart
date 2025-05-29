// 定义一个基础类 Spacecraft（航天器）
class Spacecraft {
  String name;
  DateTime? launchDate;

  // 只读属性
  int? get launchYear => launchDate?.year;

  // 构造函数
  Spacecraft(this.name, this.launchDate);

  // 方法：描述航天器
  void describe() {
    print('Spacecraft: $name');
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate!).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

// 定义一个 Mixin：可载人能力
mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

// 使用 mixin 的类：PilotedCraft 继承自 Spacecraft 并混入 Piloted
class PilotedCraft extends Spacecraft with Piloted {
  PilotedCraft(String name, DateTime launchDate) : super(name, launchDate);
}

void main() {
  // 创建一个 PilotedCraft 对象
  var craft = PilotedCraft('Crew Dragon', DateTime(2020, 5, 30));

  // 调用 Spacecraft 的 describe()
  craft.describe();

  // 设置航天员数量并调用 mixin 的 describeCrew()
  craft.astronauts = 4;
  craft.describeCrew();
}
