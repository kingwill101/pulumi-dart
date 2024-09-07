import 'package:pulumi_dart/src/input_args.dart';
import 'package:pulumi_dart/src/input_collections.dart';
import 'package:test/test.dart';
import 'package:pulumi_dart/src/resource/resource_args.dart';
import 'package:pulumi_dart/src/input.dart';

class ComplexResourceArgs1 extends ResourceArgs {
  Input<String>? s;
  InputList<bool> array = InputList<bool>();

  @override
  Map<String, InputInfo> get inputInfos => {
    's': InputInfo(InputInfoArg(name: 's'), 's', String, (dynamic obj) => (obj as ComplexResourceArgs1).s),
    'array': InputInfo(InputInfoArg(name: 'array'), 'array', List<bool>, (dynamic obj) {
      var list = (obj as ComplexResourceArgs1).array;
      return list.isEmpty ? null : list;
    }),
  };
}

class JsonResourceArgs1 extends ResourceArgs {
  InputList<bool> array = InputList<bool>();
  InputMap<int> map = InputMap<int>();

  @override
  Map<String, InputInfo> get inputInfos => {
    'array': InputInfo(InputInfoArg(name: 'array', json: true), 'array', List<bool>, (dynamic obj) {
      var list = (obj as JsonResourceArgs1).array;
      return list.isEmpty ? null : list;
    }),
    'map': InputInfo(InputInfoArg(name: 'map', json: true), 'map', Map<String, int>, (dynamic obj) {
      var map = (obj as JsonResourceArgs1).map;
      return map.isEmpty ? null : map;
    }),
  };
}

void main() {
  group('ResourceArgsTests', () {
    test('TestComplexResourceArgs1_NullValues', () async {
      var args = ComplexResourceArgs1();
      var dictionary = await args.toDictionary();

      expect(dictionary.containsKey('s'), isFalse);
      expect(dictionary.containsKey('array'), isFalse);
    });

    test('TestComplexResourceArgs1_SetField', () async {
      var args = ComplexResourceArgs1()..s = Input.fromValue('val');
      var dictionary = await args.toDictionary();

      expect(dictionary.containsKey('s'), isTrue);
      expect(dictionary.containsKey('array'), isFalse);

      expect(dictionary['s'], isNotNull);

      var sValue = dictionary['s'] as Input<String>;
      var output = sValue.toOutput();
      var data = await output.getData();
      expect(data.value, equals('val'));
    });

    test('TestComplexResourceArgs1_SetProperty', () async {
      var args = ComplexResourceArgs1()..array.addValue(true);
      var dictionary = await args.toDictionary();

      expect(dictionary.containsKey('s'), isFalse);
      expect(dictionary.containsKey('array'), isTrue);

      var arrayValue = dictionary['array'] as InputList<bool>;
      var output = arrayValue.toOutput();
      var data = await output.getData();
      expect(data.value, equals([true]));
    });

    test('TestJsonMap', () async {
      var args = JsonResourceArgs1();
      args.array.addAllValues([true, false]);
      args.map['k1'] = Input.fromValue(1);
      args.map['k2'] = Input.fromValue(2);

      var dictionary = await args.toDictionary();

      expect(dictionary.containsKey('array'), isTrue);
      expect(dictionary.containsKey('map'), isTrue);

      var arrayValue = dictionary['array'] as Input<String>;
      var mapValue = dictionary['map'] as Input<String>;

      var arrayOutput = arrayValue.toOutput();
      var mapOutput = mapValue.toOutput();

      var arrayData = await arrayOutput.getData();
      var mapData = await mapOutput.getData();

      expect(arrayData.value, equals('["true","false"]'));
      expect(mapData.value, equals('{"k1":"1","k2":"2"}'));
    });

    // Add more tests for JsonResourceArgs1 here, such as TestJsonMapUnknown and TestJsonMapSecret
  });
}