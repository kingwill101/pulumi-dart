import 'package:test/test.dart';
import 'package:pulumi/src/output.dart';
import 'package:pulumi/src/input.dart';
import '../test_utils/output_test_utils.dart';

void main() {
  group('output tests', () {
    test('apply can run on known value', () async {
      var o1 = createOutputRetainingUnknown(0, true);
      var o2 = o1.apply((a) => a + 1);
      var data = await o2.getData();
      expect(data.isKnown, isTrue);
      expect(data.value, equals(1));
    });

    test('apply can run on known awaitable value', () async {
      var o1 = createOutputRetainingUnknown(0, true);
      var o2 = o1.apply((a) => Future.value('inner'));
      var data = await o2.getData();
      expect(data.isKnown, isTrue);
      expect(data.value, equals('inner'));
    });

    test('apply can run on known known output value', () async {
      var o1 = createOutputRetainingUnknown(0, true);
      var o2 = o1.apply((a) => createOutputRetainingUnknown('inner', true));
      var data = await o2.getData();
      expect(data.isKnown, isTrue);
      expect(data.value, equals('inner'));
    });

    test('apply can run on known unknown output value', () async {
      var o1 = createOutputRetainingUnknown(0, true);
      var o2 = o1.apply((a) => createOutputRetainingUnknown('inner', false));
      var data = await o2.getData();
      expect(data.isKnown, isFalse);
      expect(data.value, equals('inner'));
    });

    test('apply produces unknown on unknown', () async {
      var o1 = createOutputRetainingUnknown(0, false);
      var o2 = o1.apply((a) => a + 1);
      var data = await o2.getData();
      expect(data.isKnown, isFalse);
    });

    test('apply produces unknown on unknown awaitable', () async {
      var o1 = createOutputRetainingUnknown(0, false);
      var o2 = o1.apply((a) => Future.value('inner'));
      var data = await o2.getData();
      expect(data.isKnown, isFalse);
    });

    test('apply produces unknown on unknown known output', () async {
      var o1 = createOutputRetainingUnknown(0, false);
      var o2 = o1.apply((a) => createOutputRetainingUnknown('', true));
      var data = await o2.getData();
      expect(data.isKnown, isFalse);
    });

    test('apply produces unknown on unknown unknown output', () async {
      var o1 = createOutputRetainingUnknown(0, false);
      var o2 = o1.apply((a) => createOutputRetainingUnknown('', false));
      var data = await o2.getData();
      expect(data.isKnown, isFalse);
    });

    test('apply preserves secret on known', () async {
      var o1 = createOutputRetainingUnknown(0, true, true);
      var o2 = o1.apply((a) => a + 1);
      var data = await o2.getData();
      expect(data.isKnown, isTrue);
      expect(data.isSecret, isTrue);
      expect(data.value, equals(1));
    });

    test('apply preserves secret on known awaitable', () async {
      var o1 = createOutputRetainingUnknown(0, true, true);
      var o2 = o1.apply((a) => Future.value('inner'));
      var data = await o2.getData();
      expect(data.isKnown, isTrue);
      expect(data.isSecret, isTrue);
      expect(data.value, equals('inner'));
    });

    test('apply preserves secret on known known output', () async {
      var o1 = createOutputRetainingUnknown(0, true, true);
      var o2 = o1.apply((a) => createOutputRetainingUnknown('inner', true));
      var data = await o2.getData();
      expect(data.isKnown, isTrue);
      expect(data.isSecret, isTrue);
      expect(data.value, equals('inner'));
    });

    test('apply preserves secret on known unknown output', () async {
      var o1 = createOutputRetainingUnknown(0, true, true);
      var o2 = o1.apply((a) => createOutputRetainingUnknown('inner', false));
      var data = await o2.getData();
      expect(data.isKnown, isFalse);
      expect(data.isSecret, isTrue);
      expect(data.value, equals('inner'));
    });

    test('apply preserves secret on unknown', () async {
      var o1 = createOutputRetainingUnknown(0, false, true);
      var o2 = o1.apply((a) => a + 1);
      var data = await o2.getData();
      expect(data.isKnown, isFalse);
      expect(data.isSecret, isTrue);
    });

    test('apply preserves secret on unknown awaitable', () async {
      var o1 = createOutputRetainingUnknown(0, false, true);
      var o2 = o1.apply((a) => Future.value('inner'));
      var data = await o2.getData();
      expect(data.isKnown, isFalse);
      expect(data.isSecret, isTrue);
    });

    test('apply propagates secret on known known output', () async {
      var o1 = createOutputRetainingUnknown(0, true);
      var o2 = o1.apply(
        (a) => createOutputRetainingUnknown('inner', true, true),
      );
      var data = await o2.getData();
      expect(data.isKnown, isTrue);
      expect(data.isSecret, isTrue);
      expect(data.value, equals('inner'));
    });

    test('apply propagates secret on known unknown output', () async {
      var o1 = createOutputRetainingUnknown(0, true);
      var o2 = o1.apply(
        (a) => createOutputRetainingUnknown('inner', false, true),
      );
      var data = await o2.getData();
      expect(data.isKnown, isFalse);
      expect(data.isSecret, isTrue);
      expect(data.value, equals('inner'));
    });

    test('apply does not propagate secret on unknown known output', () async {
      var o1 = createOutputRetainingUnknown(0, false);
      var o2 = o1.apply(
        (a) => createOutputRetainingUnknown('inner', true, true),
      );
      var data = await o2.getData();
      expect(data.isKnown, isFalse);
      expect(data.isSecret, isFalse);
    });

    test('apply does not propagate secret on unknown unknown output', () async {
      var o1 = createOutputRetainingUnknown(0, false);
      var o2 = o1.apply(
        (a) => createOutputRetainingUnknown('inner', false, true),
      );
      var data = await o2.getData();
      expect(data.isKnown, isFalse);
      expect(data.isSecret, isFalse);
    });

    test('all params outputs', () async {
      var o1 = createOutputRetainingUnknown(1, true);
      var o2 = createOutputRetainingUnknown(2, true);
      var o3 = Output.all([o1, o2]);
      var data = await o3.getData();
      expect(data.value, equals([1, 2]));
    });

    test('all enumerable outputs', () async {
      var o1 = createOutputRetainingUnknown(1, true);
      var o2 = createOutputRetainingUnknown(2, true);
      var outputs = [o1, o2];
      var o3 = Output.all(outputs);
      var data = await o3.getData();
      expect(data.value, equals([1, 2]));
    });

    test('all params inputs', () async {
      var i1 = Input.fromOutput(createOutputRetainingUnknown(1, true));
      var i2 = Input.fromOutput(createOutputRetainingUnknown(2, true));
      var o = Output.all([i1.toOutput(), i2.toOutput()]);
      var data = await o.getData();
      expect(data.value, equals([1, 2]));
    });

    test('all enumerable inputs', () async {
      var i1 = Input.fromOutput(createOutputRetainingUnknown(1, true));
      var i2 = Input.fromOutput(createOutputRetainingUnknown(2, true));
      var inputs = [i1.toOutput(), i2.toOutput()];
      var o = Output.all(inputs);
      var data = await o.getData();
      expect(data.value, equals([1, 2]));
    });

    test('is secret async on known output', () async {
      var o1 = createOutputRetainingUnknown(0, true, true);
      var o2 = createOutputRetainingUnknown(1, true, false);
      var isSecret1 = (await o1.getData()).isSecret;
      var isSecret2 = (await o2.getData()).isSecret;
      expect(isSecret1, isTrue);
      expect(isSecret2, isFalse);
    });

    test('is secret async on awaitable output', () async {
      var o1 = createOutputRetainingUnknown(
        0,
        true,
        true,
      ).apply((a) => Future.value('inner1'));
      var o2 = createOutputRetainingUnknown(
        1,
        true,
        false,
      ).apply((a) => Future.value('inner2'));
      var isSecret1 = (await o1.getData()).isSecret;
      var isSecret2 = (await o2.getData()).isSecret;
      expect(isSecret1, isTrue);
      expect(isSecret2, isFalse);
    });

    test('unsecret on known secret value', () async {
      var secret = createOutputRetainingUnknown(1, true, true);
      var notSecret = Output.unsecret(secret);
      var notSecretData = await notSecret.getData();
      expect(notSecretData.isSecret, isFalse);
      expect(notSecretData.value, equals(1));
    });

    test('unsecret on awaitable secret value', () async {
      var secret = createOutputRetainingUnknown(
        0,
        true,
        true,
      ).apply((a) => Future.value('inner'));
      var notSecret = Output.unsecret(secret);
      var notSecretData = await notSecret.getData();
      expect(notSecretData.isSecret, isFalse);
      expect(notSecretData.value, equals('inner'));
    });

    test('unsecret on non secret value', () async {
      var notSecret = createOutputRetainingUnknown(2, true, false);
      var notSecretOutput = Output.unsecret(notSecret);
      var notSecretData = await notSecretOutput.getData();
      expect(notSecretData.isSecret, isFalse);
      expect(notSecretData.value, equals(2));
    });

    test('create unknown skips value factory', () async {
      var output = Output.createUnknown(() => Future.value('value'));
      var data = await output.getData();
      expect(data.isKnown, isFalse);
      expect(data.value, isNull);
    });

    test('create secret sets secret', () async {
      var o1 = createOutputRetainingUnknown(0, true);
      var o2 = Output.createSecret(o1);
      var data = await o2.getData();
      expect(data.isKnown, isTrue);
      expect(data.isSecret, isTrue);
      expect(data.value, equals(0));
    });
  });
}
