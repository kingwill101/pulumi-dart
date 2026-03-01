import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

class _ProviderAssumeRoleArgs extends InputArgs {
  _ProviderAssumeRoleArgs({this.roleArn, this.tags});

  final Input<String>? roleArn;
  final Input<Map<String, Input<String>>>? tags;

  @override
  Map<String, InputInfo> get inputInfos => {
    'roleArn': InputInfo(
      const InputInfoArg(name: 'roleArn'),
      'roleArn',
      String,
      (obj) => (obj as _ProviderAssumeRoleArgs).roleArn,
    ),
    'tags': InputInfo(
      const InputInfoArg(name: 'tags'),
      'tags',
      Map,
      (obj) => (obj as _ProviderAssumeRoleArgs).tags,
    ),
  };
}

class _ProviderFeaturesNetworkArgs extends InputArgs {
  _ProviderFeaturesNetworkArgs({this.relaxedLocking});

  final Input<bool>? relaxedLocking;

  @override
  Map<String, InputInfo> get inputInfos => {
    'relaxedLocking': InputInfo(
      const InputInfoArg(name: 'relaxedLocking'),
      'relaxedLocking',
      bool,
      (obj) => (obj as _ProviderFeaturesNetworkArgs).relaxedLocking,
    ),
  };
}

class _ProviderFeaturesArgs extends InputArgs {
  _ProviderFeaturesArgs({this.network});

  final Input<_ProviderFeaturesNetworkArgs>? network;

  @override
  Map<String, InputInfo> get inputInfos => {
    'network': InputInfo(
      const InputInfoArg(name: 'network'),
      'network',
      _ProviderFeaturesNetworkArgs,
      (obj) => (obj as _ProviderFeaturesArgs).network,
    ),
  };
}

void main() {
  group('runtime to_json', () {
    test('serializes basic values', () async {
      expect(await runtimeToJson({}), equals('{}'));
      expect(await runtimeToJson([]), equals('[]'));
      expect(await runtimeToJson('hello'), equals('"hello"'));
      expect(await runtimeToJson(42), equals('42'));
      expect(await runtimeToJson({'hello': 42}), equals('{"hello":42}'));
      expect(await runtimeToJson([1, 2, 3]), equals('[1,2,3]'));
      expect(
        await runtimeToJson({
          'hello': [1, 2, 3],
        }),
        equals('{"hello":[1,2,3]}'),
      );
    });

    test('serializes simple InputArgs values', () async {
      final assumeRole = _ProviderAssumeRoleArgs(
        roleArn: Input.fromValue('some-arn'),
        tags: Input.fromValue({'hello': Input.fromValue('world')}),
      );

      expect(
        await runtimeToJson(assumeRole),
        equals('{"roleArn":"some-arn","tags":{"hello":"world"}}'),
      );
    });

    test('serializes nested InputArgs values', () async {
      final features = _ProviderFeaturesArgs(
        network: Input.fromValue(
          _ProviderFeaturesNetworkArgs(relaxedLocking: Input.fromValue(false)),
        ),
      );

      expect(
        await runtimeToJson(features),
        equals('{"network":{"relaxedLocking":false}}'),
      );
    });

    test('unknown outputs serialize to JSON null', () async {
      final unknown = Output.createUnknown<int>();
      expect(await runtimeToJson(unknown), equals('null'));
    });

    test('unknown nested map/list values propagate unknown result', () async {
      final unknown = Output.createUnknown<String>();

      expect(
        await runtimeToJson({'known': 1, 'unknown': unknown}),
        equals('null'),
      );
      expect(await runtimeToJson([1, unknown, 3]), equals('null'));
    });
  });
}
