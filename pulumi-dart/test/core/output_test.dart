import 'package:test/test.dart';
import 'package:pulumi/src/output.dart';
import 'package:pulumi/src/input.dart';
import 'package:pulumi/src/resource/resource.dart';

Output<T> createOutput<T>(T value, bool isKnown, [bool isSecret = false]) {
  return Output<T>(
    Future.value(
      OutputData<T>(
        value: isKnown ? value : null,
        isKnown: isKnown,
        isSecret: isSecret,
        resources: {},
      ),
    ),
  );
}

Output<T> createOutputWithResources<T>(
  Iterable<Resource> resources,
  T value,
  bool isKnown, [
  bool isSecret = false,
]) {
  return Output<T>(
    Future.value(
      OutputData<T>(
        value: isKnown ? value : null,
        isKnown: isKnown,
        isSecret: isSecret,
        resources: resources.toSet(),
      ),
    ),
  );
}

void main() {
  group('output tests', () {
    test('apply can run on known value', () async {
      var o1 = createOutput(0, true);
      var o2 = o1.apply((a) async => a + 1);
      var data = await o2.getData();
      expect(data.isKnown, isTrue);
      expect(data.value, equals(1));
    });

    test('apply can run on known awaitable value', () async {
      var o1 = createOutput(0, true);
      var o2 = o1.apply((a) => Future.value('inner'));
      var data = await o2.getData();
      expect(data.isKnown, isTrue);
      expect(data.value, equals('inner'));
    });

    test('apply can run on known known output value', () async {
      var o1 = createOutput(0, true);
      var o2 = o1.apply((a) => createOutput('inner', true));
      var data = await o2.getData();
      expect(data.isKnown, isTrue);
      expect(data.value, equals('inner'));
    });

    test('apply can run on known unknown output value', () async {
      var o1 = createOutput(0, true);
      var o2 = o1.apply((a) => createOutput('inner', false));
      var data = await o2.getData();
      expect(data.isKnown, isFalse);
      expect(data.value, isNull);
    });

    test('apply produces unknown default on unknown', () async {
      var o1 = createOutput(0, false);
      var o2 = o1.apply((a) async => a + 1);
      var data = await o2.getData();
      expect(data.isKnown, isFalse);
      expect(data.value, isNull);
    });

    test('apply produces unknown default on unknown awaitable', () async {
      var o1 = createOutput(0, false);
      var o2 = o1.apply((a) => Future.value('inner'));
      var data = await o2.getData();
      expect(data.isKnown, isFalse);
      expect(data.value, isNull);
    });

    test('apply produces unknown default on unknown known output', () async {
      var o1 = createOutput(0, false);
      var o2 = o1.apply((a) => createOutput('', true));
      var data = await o2.getData();
      expect(data.isKnown, isFalse);
      expect(data.value, isNull);
    });

    test('apply produces unknown default on unknown unknown output', () async {
      var o1 = createOutput(0, false);
      var o2 = o1.apply((a) => createOutput('', false));
      var data = await o2.getData();
      expect(data.isKnown, isFalse);
      expect(data.value, isNull);
    });

    test('apply preserves secret on known', () async {
      var o1 = createOutput(0, true, true);
      var o2 = o1.apply((a) async => a + 1);
      var data = await o2.getData();
      expect(data.isKnown, isTrue);
      expect(data.isSecret, isTrue);
      expect(data.value, equals(1));
    });

    test('apply preserves secret on known awaitable', () async {
      var o1 = createOutput(0, true, true);
      var o2 = o1.apply((a) => Future.value('inner'));
      var data = await o2.getData();
      expect(data.isKnown, isTrue);
      expect(data.isSecret, isTrue);
      expect(data.value, equals('inner'));
    });

    test('apply preserves secret on known known output', () async {
      var o1 = createOutput(0, true, true);
      var o2 = o1.apply((a) => createOutput('inner', true));
      var data = await o2.getData();
      expect(data.isKnown, isTrue);
      expect(data.isSecret, isTrue);
      expect(data.value, equals('inner'));
    });

    test('apply preserves secret on known unknown output', () async {
      var o1 = createOutput(0, true, true);
      var o2 = o1.apply((a) => createOutput('inner', false));
      var data = await o2.getData();
      expect(data.isKnown, isFalse);
      expect(data.isSecret, isTrue);
      expect(data.value, isNull);
    });

    test('apply preserves secret on unknown', () async {
      var o1 = createOutput(0, false, true);
      var o2 = o1.apply((a) async => a + 1);
      var data = await o2.getData();
      expect(data.isKnown, isFalse);
      expect(data.isSecret, isTrue);
    });

    test('apply preserves secret on unknown awaitable', () async {
      var o1 = createOutput(0, false, true);
      var o2 = o1.apply((a) => Future.value('inner'));
      var data = await o2.getData();
      expect(data.isKnown, isFalse);
      expect(data.isSecret, isTrue);
      expect(data.value, isNull);
    });

    test('apply propagates secret on known known output', () async {
      var o1 = createOutput(0, true);
      var o2 = o1.apply((a) => createOutput('inner', true, true));
      var data = await o2.getData();
      expect(data.isKnown, isTrue);
      expect(data.isSecret, isTrue);
      expect(data.value, equals('inner'));
    });

    test('apply propagates secret on known unknown output', () async {
      var o1 = createOutput(0, true);
      var o2 = o1.apply((a) => createOutput('inner', false, true));
      var data = await o2.getData();
      expect(data.isKnown, isFalse);
      expect(data.isSecret, isTrue);
      expect(data.value, isNull);
    });

    test('apply does not propagate secret on unknown known output', () async {
      var o1 = createOutput(0, false);
      var o2 = o1.apply((a) => createOutput('inner', true, true));
      var data = await o2.getData();
      expect(data.isKnown, isFalse);
      expect(data.isSecret, isFalse);
      expect(data.value, isNull);
    });

    test('apply does not propagate secret on unknown unknown output', () async {
      var o1 = createOutput(0, false);
      var o2 = o1.apply((a) => createOutput('inner', false, true));
      var data = await o2.getData();
      expect(data.isKnown, isFalse);
      expect(data.isSecret, isFalse);
      expect(data.value, isNull);
    });

    test('all params outputs', () async {
      var o1 = createOutput(1, true);
      var o2 = createOutput(2, true);
      var o3 = Output.all([o1, o2]);
      var data = await o3.getData();
      expect(data.value, equals([1, 2]));
    });

    test('all enumerable outputs', () async {
      var o1 = createOutput(1, true);
      var o2 = createOutput(2, true);
      var outputs = [o1, o2];
      var o3 = Output.all(outputs);
      var data = await o3.getData();
      expect(data.value, equals([1, 2]));
    });

    test('all params inputs', () async {
      var i1 = Input.fromOutput(createOutput(1, true));
      var i2 = Input.fromOutput(createOutput(2, true));
      var o = Output.all([i1.toOutput(), i2.toOutput()]);
      var data = await o.getData();
      expect(data.value, equals([1, 2]));
    });

    test('all enumerable inputs', () async {
      var i1 = Input.fromOutput(createOutput(1, true));
      var i2 = Input.fromOutput(createOutput(2, true));
      var inputs = [i1.toOutput(), i2.toOutput()];
      var o = Output.all(inputs);
      var data = await o.getData();
      expect(data.value, equals([1, 2]));
    });

    test('is secret async on known output', () async {
      var o1 = createOutput(0, true, true);
      var o2 = createOutput(1, true, false);
      var isSecret1 = o1.getData().then((data) => data.isSecret);
      var isSecret2 = o2.getData().then((data) => data.isSecret);
      expect(await isSecret1, isTrue);
      expect(await isSecret2, isFalse);
    });

    test('is secret async on awaitable output', () async {
      var o1 = createOutput(0, true, true);
      var o2 = createOutput(1, true, false);

      var o3 = o1.apply((a) => Future.value('inner1'));
      var o4 = o2.apply((a) => Future.value('inner2'));

      var isSecret1 = o3.getData().then((data) => data.isSecret);
      var isSecret2 = o4.getData().then((data) => data.isSecret);

      expect(await isSecret1, isTrue);
      expect(await isSecret2, isFalse);
    });

    test('unsecret on known secret value', () async {
      var secret = createOutput(1, true, true);
      var notSecret = Output.unsecret(secret);
      var notSecretData = await notSecret.getData();
      expect(notSecretData.isSecret, isFalse);
      expect(notSecretData.value, equals(1));
    });

    test('unsecret on awaitable secret value', () async {
      var secret = createOutput(0, true, true);
      var o1 = secret.apply((a) => Future.value('inner'));
      var notSecret = Output.unsecret(o1);
      var notSecretData = await notSecret.getData();
      expect(notSecretData.isSecret, isFalse);
      expect(notSecretData.value, equals('inner'));
    });

    test('unsecret on non secret value', () async {
      var notSecret = createOutput(2, true, false);
      var notSecretOutput = Output.unsecret(notSecret);
      var notSecretData = await notSecretOutput.getData();
      expect(notSecretData.isSecret, isFalse);
      expect(notSecretData.value, equals(2));
    });

    test('create unknown skips value factory', () async {
      var output = Output.createUnknown(() => Future.value(null));
      var data = await output.getData();
      expect(data.isKnown, isFalse);
      expect(data.value, isNull);
    });

    test('create secret sets secret', () async {
      var o1 = createOutput(0, true);
      var o2 = Output.createSecret(o1);
      var data = await o2.getData();
      expect(data.isKnown, isTrue);
      expect(data.isSecret, isTrue);
      expect(data.value, equals(0));
    });
  });
}
