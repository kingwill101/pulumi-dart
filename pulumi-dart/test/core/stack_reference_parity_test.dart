import 'package:mockito/mockito.dart';
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/constants.dart';
import 'package:test/test.dart';

import '../mocks/mocks.mocks.dart';

Value _toValue(dynamic value) {
  if (value == null) {
    return Value()..nullValue = NullValue.NULL_VALUE;
  }
  if (value is String) {
    return Value()..stringValue = value;
  }
  if (value is bool) {
    return Value()..boolValue = value;
  }
  if (value is num) {
    return Value()..numberValue = value.toDouble();
  }
  if (value is List) {
    return Value()
      ..listValue = (ListValue()..values.addAll(value.map(_toValue)));
  }
  if (value is Map<String, dynamic>) {
    final struct = Struct();
    for (final entry in value.entries) {
      struct.fields[entry.key] = _toValue(entry.value);
    }
    return Value()..structValue = struct;
  }
  return Value()..stringValue = value.toString();
}

void main() {
  group('stack reference parity', () {
    late MockDeploymentImpl mockDeployment;

    setUp(() {
      mockDeployment = MockDeploymentImpl();

      when(mockDeployment.stack).thenThrow(StateError('Stack not set'));
      when(mockDeployment.registerResourceOperation(any)).thenAnswer((_) {});
      when(
        mockDeployment.readOrRegisterResource(
          resource: anyNamed('resource'),
          remote: anyNamed('remote'),
          newDependency: anyNamed('newDependency'),
          args: anyNamed('args'),
          opts: anyNamed('opts'),
          registerPackageRequest: anyNamed('registerPackageRequest'),
        ),
      ).thenAnswer((invocation) async {
        final resource = invocation.namedArguments[#resource] as Resource;
        resource.resolveUrn(
          'urn:pulumi:stack::project::${resource.getResourceType()}::${resource.getResourceName()}',
        );

        final outputsValue = Value()
          ..structValue = (Struct()
            ..fields['normal'] = _toValue('plain')
            ..fields['secret'] = _toValue('hidden'));

        final secretWrappedOutputs = Struct()
          ..fields[Constants.specialSigKey] = (Value()
            ..stringValue = Constants.specialSecretSig)
          ..fields[Constants.valueName] = outputsValue;

        final responseObject = Struct()
          ..fields['name'] = (Value()..stringValue = 'org/project/dev')
          ..fields['outputs'] = (Value()..structValue = secretWrappedOutputs)
          ..fields['secretOutputNames'] = (Value()
            ..listValue = (ListValue()
              ..values.add(Value()..stringValue = 'secret')));
        resource.resolveOutputs(responseObject);
      });

      DeploymentImpl.setTestInstance(mockDeployment);
    });

    tearDown(DeploymentImpl.clearInstance);

    test('getOutput preserves per-key secret semantics', () async {
      final reference = StackReference('ref');

      final normal = await reference
          .getOutput(Input.fromValue('normal'))
          .getData();
      final secret = await reference
          .getOutput(Input.fromValue('secret'))
          .getData();

      expect(normal.value, equals('plain'));
      expect(normal.isSecret, isFalse);
      expect(secret.value, equals('hidden'));
      expect(secret.isSecret, isTrue);
    });

    test('requireOutput throws for missing keys', () async {
      final reference = StackReference('ref');

      await expectLater(
        reference.requireOutput(Input.fromValue('missing')).getData(),
        throwsA(
          isA<Exception>().having(
            (error) => error.toString(),
            'message',
            contains(
              "Required output 'missing' does not exist on stack 'org/project/dev'.",
            ),
          ),
        ),
      );
    });

    test(
      'getOutputDetails returns secret value in secretValue field',
      () async {
        final reference = StackReference('ref');
        final details = await reference.getOutputDetails('secret');

        expect(details.value, isNull);
        expect(details.secretValue, equals('hidden'));
      },
    );

    test('getValue and requireValue reject secret outputs', () async {
      final reference = StackReference('ref');

      await expectLater(
        reference.getValue(Input.fromValue('secret')),
        throwsA(isA<Exception>()),
      );
      await expectLater(
        reference.requireValue(Input.fromValue('secret')),
        throwsA(isA<Exception>()),
      );
    });
  });
}
