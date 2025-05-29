// 定义普通枚举类型：行星类型
enum PlanetType {
  terrestrial, // 类地行星
  gas,         // 气态行星
  ice          // 冰态行星
}

// 增强型枚举：包含每个行星的属性
enum Planet {
  mercury(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  venus(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  earth(planetType: PlanetType.terrestrial, moons: 1, hasRings: false),
  mars(planetType: PlanetType.terrestrial, moons: 2, hasRings: false),
  jupiter(planetType: PlanetType.gas, moons: 79, hasRings: true),
  saturn(planetType: PlanetType.gas, moons: 83, hasRings: true),
  uranus(planetType: PlanetType.ice, moons: 27, hasRings: true),
  neptune(planetType: PlanetType.ice, moons: 14, hasRings: true);

  // 构造函数（用于初始化属性）
  const Planet({
    required this.planetType,
    required this.moons,
    required this.hasRings,
  });

  // final 属性：不可变
  final PlanetType planetType;
  final int moons;
  final bool hasRings;

  // 方法：判断是否是巨行星
  bool get isGiant =>
      planetType == PlanetType.gas || planetType == PlanetType.ice;
}

void main() {
  final yourPlanet = Planet.earth;

  print('Planet: ${yourPlanet.name}');
  print('Type: ${yourPlanet.planetType}');
  print('Moons: ${yourPlanet.moons}');
  print('Has rings: ${yourPlanet.hasRings}');
  print('Is giant planet: ${yourPlanet.isGiant ? "Yes" : "No"}');

  // 使用 switch 枚举
  switch (yourPlanet) {
    case Planet.earth:
      print("You're home!");
      break;
    case Planet.jupiter:
    case Planet.saturn:
    case Planet.uranus:
    case Planet.neptune:
      print("A gas or ice giant!");
      break;
    default:
      print("Another planet.");
  }
}
