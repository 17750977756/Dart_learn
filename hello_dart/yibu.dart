import 'dart:async';

// 模拟文件类（替代 dart:io 中的 File）
class FakeFile {
  final String name;
  bool _exists = false;
  DateTime _modified = DateTime.now();
  String _content = '';

  FakeFile(this.name);

  Future<bool> exists() async {
    await Future.delayed(Duration(milliseconds: 200));
    return _exists;
  }

  Future<DateTime> lastModified() async {
    return _modified;
  }

  Future<void> create() async {
    await Future.delayed(Duration(milliseconds: 200));
    _exists = true;
    _modified = DateTime.now();
    print('[File Created] $name');
  }

  Future<void> writeAsString(String content) async {
    _content = content;
    _modified = DateTime.now();
    print('[Write] $name: $content');
  }
}

// 模拟飞船类
class Spacecraft {
  final String name;
  Spacecraft(this.name);
}

// 异步延迟打印
const oneSecond = Duration(seconds: 1);

Future<void> printWithDelay(String message) async {
  await Future.delayed(oneSecond);
  print(message);
}

// 批量创建“描述文件”
Future<void> createDescriptions(Iterable<String> objects) async {
  for (final object in objects) {
    try {
      var file = FakeFile('$object.txt');
      if (await file.exists()) {
        var modified = await file.lastModified();
        print(
          'File for $object already exists. Modified on $modified.',
        );
        continue;
      }
      await file.create();
      await file.writeAsString('Start describing $object in this file.');
    } catch (e) {
      print('Cannot create description for $object: $e');
    }
  }
}

// 使用 async* 生成异步流
Stream<String> report(Spacecraft craft, Iterable<String> objects) async* {
  for (final object in objects) {
    await Future.delayed(oneSecond);
    yield '${craft.name} flies by $object';
  }
}

void main() async {
  print('🚀 Async Example Starting...\n');

  await printWithDelay('Hello after 1 second!\n');

  // 异步文件模拟
  var objects = ['Mars', 'Jupiter', 'Saturn'];
  await createDescriptions(objects);

  // 异步流生成并监听
  var craft = Spacecraft('Voyager I');
  await for (final msg in report(craft, objects)) {
    print('[Stream] $msg');
  }

  print('\n✅ All done!');
}