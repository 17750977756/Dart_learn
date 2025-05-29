// 定义一个基础类：Spacecraft
class Spacecraft {
  String name;
  DateTime? launchDate;

  Spacecraft(this.name, this.launchDate);

  void describe() {
    print('Spacecraft: $name');
  }
}

// 接口的实现：MockSpaceship 实现 Spacecraft 的接口
class MockSpaceship implements Spacecraft {
  @override
  String name = 'Mocky';

  @override
  DateTime? launchDate = null;

  @override
  void describe() {
    print('This is a mock spaceship named $name.');
  }
}

// 抽象类：定义一个可描述的行为
abstract class Describable {
  // 抽象方法：子类必须实现
  void describe();

  // 非抽象方法：可直接使用
  void describeWithEmphasis() {
    print('=========');
    describe(); // 调用子类实现的 describe 方法
    print('=========');
  }
}

// 一个类扩展抽象类，实现具体逻辑
class RealThing extends Describable {
  String name;

  RealThing(this.name);

  @override
  void describe() {
    print('This is a real thing called $name.');
  }
}

void main() {
  // 使用接口实现类
  var mock = MockSpaceship();
  mock.describe(); // 输出 MockSpaceship 的实现

  // 使用抽象类的子类
  var real = RealThing('Voyager');
  real.describeWithEmphasis(); // 调用带强调的描述
}
