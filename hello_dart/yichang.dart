import 'dart:async';

class FakeFile {
  final String name;
  final String? content;

  FakeFile(this.name, {this.content});

  Future<String> readAsString() async {
    await Future.delayed(Duration(milliseconds: 300));
    if (content == null) {
      throw Exception('File $name not found.');
    }
    return content!;
  }
}

Future<void> describeFlybyObjects(List<String> flybyObjects) async {
  try {
    for (final object in flybyObjects) {
      var file = FakeFile('$object.txt', content: object == 'Mars' ? 'Red planet' : null);
      var description = await file.readAsString();
      print('[$object]: $description');
    }
  } catch (e) {
    print('Could not describe object: $e');
  } finally {
    flybyObjects.clear();
    print('List cleared.');
  }
}

void main() async {
  await describeFlybyObjects(['Mars', 'Jupiter']);
}
