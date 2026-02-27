import 'package:pulumi/src/input.dart';
import 'package:pulumi/src/input_collections.dart';
import 'package:pulumi/src/output.dart';
import 'package:pulumi/src/resource/dependency_resource.dart';
import 'package:test/test.dart';

void main() {
  group('input collections', () {
    test('InputList empty resolves to known empty list', () async {
      final list = InputList<String>();

      final data = await list.toOutput().getData();
      expect(data.isKnown, isTrue);
      expect(data.isSecret, isFalse);
      expect(data.value, equals(<String>[]));
    });

    test('InputList unwraps output values in order', () async {
      final list = InputList<String>();
      list.addValue('hello');
      list.add(Input.fromOutput(Output.create('world')));

      final data = await list.toOutput().getData();
      expect(data.isKnown, isTrue);
      expect(data.value, equals(<String>['hello', 'world']));
    });

    test('InputList with secret value propagates secret bit', () async {
      final list = InputList<int>();
      list.add(Input.fromOutput(Output.createSecret(Output.create(1))));
      list.addValue(2);

      final data = await list.toOutput().getData();
      expect(data.isKnown, isTrue);
      expect(data.isSecret, isTrue);
      expect(data.value, equals(<int>[1, 2]));
    });

    test('InputList with unknown value becomes unknown', () async {
      final list = InputList<int>();
      list.add(Input.fromOutput(Output.createUnknown<int>()));
      list.addValue(2);

      final data = await list.toOutput().getData();
      expect(data.isKnown, isFalse);
      expect(data.value, isNull);
    });

    test(
      'InputList unions dependency resources from element outputs',
      () async {
        final dep = DependencyResource(
          'urn:pulumi:stack::project::test:index:Resource::dep',
        );
        final list = InputList<String>([
          Input.fromOutput(
            Output(
              Future.value(
                OutputData<String>(
                  value: 'value',
                  isKnown: true,
                  isSecret: false,
                  resources: {dep},
                ),
              ),
            ),
          ),
        ]);

        final data = await list.toOutput().getData();
        expect(data.isKnown, isTrue);
        expect(data.resources, equals({dep}));
        expect(data.value, equals(<String>['value']));
      },
    );

    test('InputMap empty resolves to known empty map', () async {
      final map = InputMap<String>();

      final data = await map.toOutput().getData();
      expect(data.isKnown, isTrue);
      expect(data.isSecret, isFalse);
      expect(data.value, equals(<String, String>{}));
    });

    test('InputMap.merge combines maps and keeps right-side values', () async {
      final map1 = InputMap<String>();
      map1['K1'] = Input.fromValue('V1');
      map1['K2'] = Input.fromOutput(Output.create('V2'));
      map1['K3'] = Input.fromOutput(Output.create('V3_wrong'));

      final map2 = InputMap<String>();
      map2['K3'] = Input.fromOutput(Output.create('V3'));
      map2['K4'] = Input.fromValue('V4');

      final merged = InputMap.merge(map1, map2);
      final mergedData = await merged.toOutput().getData();
      expect(mergedData.isKnown, isTrue);
      expect(
        mergedData.value,
        equals(<String, String>{
          'K1': 'V1',
          'K2': 'V2',
          'K3': 'V3',
          'K4': 'V4',
        }),
      );

      final map1Data = await map1.toOutput().getData();
      final map2Data = await map2.toOutput().getData();
      expect(
        map1Data.value,
        equals(<String, String>{'K1': 'V1', 'K2': 'V2', 'K3': 'V3_wrong'}),
      );
      expect(map2Data.value, equals(<String, String>{'K3': 'V3', 'K4': 'V4'}));
    });

    test('InputMap with secret value propagates secret bit', () async {
      final map = InputMap<int>();
      map['k1'] = Input.fromOutput(Output.createSecret(Output.create(1)));
      map['k2'] = Input.fromValue(2);

      final data = await map.toOutput().getData();
      expect(data.isKnown, isTrue);
      expect(data.isSecret, isTrue);
      expect(data.value, equals(<String, int>{'k1': 1, 'k2': 2}));
    });

    test('InputMap with unknown value becomes unknown', () async {
      final map = InputMap<int>();
      map['k1'] = Input.fromOutput(Output.createUnknown<int>());
      map['k2'] = Input.fromValue(2);

      final data = await map.toOutput().getData();
      expect(data.isKnown, isFalse);
      expect(data.value, isNull);
    });

    test('InputList exposes list mutation semantics', () async {
      final list = InputList<int>();
      expect(list.isEmpty, isTrue);

      list.addValue(1);
      list.addAll([Input.fromValue(2)]);
      list.addAllValues([3, 4]);
      expect(list.isNotEmpty, isTrue);
      expect(list.length, 4);
      expect(await list[2].toOutput().getValue(), 3);

      list[1] = Input.fromValue(22);
      list.length = 3;
      expect(list.length, 3);

      final data = await list.toOutput().getData();
      expect(data.value, equals(<int>[1, 22, 3]));
    });

    test('InputMap helper methods preserve map semantics', () async {
      final map = InputMap<int>();
      map.setValue('a', 1);
      map['b'] = Input.fromValue(2);
      map.addAll({'c': Input.fromValue(3)});
      map.addAllValues({'d': 4, 'e': 5});

      expect(map.keys.toSet(), equals({'a', 'b', 'c', 'd', 'e'}));
      expect(await map['a']!.toOutput().getValue(), 1);

      final removed = map.remove('c');
      expect(await removed!.toOutput().getValue(), 3);
      expect(map.keys.toSet(), equals({'a', 'b', 'd', 'e'}));

      map.clear();
      expect(map.keys, isEmpty);
      final data = await map.toOutput().getData();
      expect(data.value, equals(<String, int>{}));
    });
  });
}
