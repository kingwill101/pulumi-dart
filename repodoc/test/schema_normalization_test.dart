import 'dart:convert';
import 'dart:io';

import 'package:repodoc/src/commands/packages/schema_normalization.dart';
import 'package:test/test.dart';

void main() {
  test(
    'relaxes only configured required properties without changing source',
    () {
      final directory = Directory.systemTemp.createTempSync('repodoc-schema-');
      addTearDown(() => directory.deleteSync(recursive: true));
      final source = File('${directory.path}/source.json')
        ..writeAsStringSync(
          jsonEncode({
            'types': {
              'example:index:Recursive': {
                'properties': {
                  'child': {'\$ref': '#/types/example:index:Recursive'},
                  'name': {'type': 'string'},
                },
                'required': ['child', 'name'],
              },
            },
          }),
        );
      final original = source.readAsStringSync();
      final destination = File('${directory.path}/normalized.json');

      writeNormalizedSchema(
        source: source,
        destination: destination,
        requiredPropertyRelaxations: {
          'example:index:Recursive': ['child'],
        },
      );

      expect(source.readAsStringSync(), original);
      final normalized = jsonDecode(destination.readAsStringSync());
      expect(normalized['types']['example:index:Recursive']['required'], [
        'name',
      ]);
    },
  );

  test('rejects stale relaxation configuration', () {
    final directory = Directory.systemTemp.createTempSync('repodoc-schema-');
    addTearDown(() => directory.deleteSync(recursive: true));
    final source = File('${directory.path}/source.json')
      ..writeAsStringSync(
        jsonEncode({
          'types': {
            'example:index:Value': {
              'properties': {
                'name': {'type': 'string'},
              },
              'required': ['name'],
            },
          },
        }),
      );

    expect(
      () => writeNormalizedSchema(
        source: source,
        destination: File('${directory.path}/normalized.json'),
        requiredPropertyRelaxations: {
          'example:index:Value': ['missing'],
        },
      ),
      throwsFormatException,
    );
  });
}
