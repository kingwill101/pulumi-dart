import 'package:pulumi/src/input_args.dart';
import 'package:pulumi/src/input_collections.dart';
import 'package:test/test.dart';
import 'package:pulumi/src/input.dart';
import 'package:pulumi/src/output.dart';

class ComplexResourceArgs1 extends InputArgs {
  Input<String>? s;
  InputList<bool> array = InputList<bool>();

  @override
  Map<String, InputInfo> get inputInfos => {
    's': InputInfo(
      InputInfoArg(name: 's'),
      's',
      String,
      (dynamic obj) => (obj as ComplexResourceArgs1).s,
    ),
    'array': InputInfo(InputInfoArg(name: 'array'), 'array', List<bool>, (
      dynamic obj,
    ) {
      var list = (obj as ComplexResourceArgs1).array;
      return list.isEmpty ? null : list;
    }),
  };
}

class JsonResourceArgs1 extends InputArgs {
  InputList<bool> array = InputList<bool>();
  InputMap<int> map = InputMap<int>();

  @override
  Map<String, InputInfo> get inputInfos => {
    'array': InputInfo(
      InputInfoArg(name: 'array', json: true),
      'array',
      List<bool>,
      (dynamic obj) {
        var list = (obj as JsonResourceArgs1).array;
        return list.isEmpty ? null : list;
      },
    ),
    'map': InputInfo(
      InputInfoArg(name: 'map', json: true),
      'map',
      Map<String, int>,
      (dynamic obj) {
        var map = (obj as JsonResourceArgs1).map;
        return map.isEmpty ? null : map;
      },
    ),
  };
}

class DynamicResourceArgs extends InputArgs {
  final Map<String, dynamic> _args = {};

  void operator []=(String key, dynamic value) {
    _args[key] = value;
  }

  dynamic operator [](String key) => _args[key];

  @override
  Map<String, InputInfo> get inputInfos => _args.map(
    (key, value) => MapEntry(
      key,
      InputInfo(
        InputInfoArg(name: key, json: true),
        key,
        dynamic,
        (dynamic obj) => (obj as DynamicResourceArgs)[key],
      ),
    ),
  );
}

void main() {
  group('resource args tests', () {
    test('complex resource args 1 null values', () async {
      var args = ComplexResourceArgs1();
      var dictionary = await args.toDictionary();

      expect(dictionary.containsKey('s'), isFalse);
      expect(dictionary.containsKey('array'), isFalse);
    });

    test('complex resource args 1 set field', () async {
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

    test('complex resource args 1 set property', () async {
      var args = ComplexResourceArgs1()..array.addValue(true);
      var dictionary = await args.toDictionary();

      expect(dictionary.containsKey('s'), isFalse);
      expect(dictionary.containsKey('array'), isTrue);

      var arrayValue = dictionary['array'] as InputList<bool>;
      var output = arrayValue.toOutput();
      var data = await output.getData();
      expect(data.value, equals([true]));
    });

    test('json map', () async {
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

      expect(arrayData.value, equals('[true,false]'));
      expect(mapData.value, equals('{"k1":1,"k2":2}'));
    });

    test('json map unknown', () async {
      var args = DynamicResourceArgs();
      args['array'] = InputList<dynamic>()
        ..add(Input.fromOutput(Output.createUnknown<bool>()))
        ..addValue(false);
      args['map'] = InputMap<dynamic>()
        ..['k1'] = Input.fromOutput(Output.createUnknown<int>())
        ..['k2'] = Input.fromValue(2);

      var dictionary = await args.toDictionary();

      expect(dictionary.containsKey('array'), isTrue);
      expect(dictionary.containsKey('map'), isTrue);

      var arrayValue = dictionary['array'] as Input<String>;
      var mapValue = dictionary['map'] as Input<String>;

      var arrayOutput = arrayValue.toOutput();
      var mapOutput = mapValue.toOutput();

      var arrayData = await arrayOutput.getData();
      var mapData = await mapOutput.getData();

      expect(arrayData.isKnown, isFalse);
      expect(mapData.isKnown, isFalse);
    });

    test('json map secret', () async {
      var args = DynamicResourceArgs();
      args['array'] = InputList<dynamic>()
        ..add(Input.fromOutput(Output.createSecret(Output.create(true))))
        ..addValue(false);
      args['map'] = InputMap<dynamic>()
        ..['k1'] = Input.fromOutput(Output.createSecret(Output.create(1)))
        ..['k2'] = Input.fromValue(2);

      var dictionary = await args.toDictionary();

      expect(dictionary.containsKey('array'), isTrue);
      expect(dictionary.containsKey('map'), isTrue);

      var arrayValue = dictionary['array'] as Input<String>;
      var mapValue = dictionary['map'] as Input<String>;

      var arrayOutput = arrayValue.toOutput();
      var mapOutput = mapValue.toOutput();

      var arrayData = await arrayOutput.getData();
      var mapData = await mapOutput.getData();

      expect(arrayData.isSecret, isTrue);
      expect(arrayData.value, equals('[true,false]'));

      expect(mapData.isSecret, isTrue);
      expect(mapData.value, equals('{"k1":1,"k2":2}'));
    });
  });
}
