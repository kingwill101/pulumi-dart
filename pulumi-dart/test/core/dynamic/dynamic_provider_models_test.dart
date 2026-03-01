import 'package:pulumi/dynamic.dart' as dyn;
import 'package:test/test.dart';

class _NoopProvider
    extends dyn.ResourceProvider<Map<String, dynamic>, Map<String, dynamic>> {
  @override
  Future<dyn.CreateResult<Map<String, dynamic>>> create(
    Map<String, dynamic> inputs,
  ) async {
    return dyn.CreateResult<Map<String, dynamic>>(
      id: 'id-1',
      outs: <String, dynamic>{'echo': inputs['value']},
    );
  }
}

void main() {
  group('dynamic provider models', () {
    test('MapConfig get/require behavior is stable', () {
      final config = dyn.MapConfig(<String, String>{'token': 'abc123'});

      expect(config.get('token'), equals('abc123'));
      expect(config.get('missing'), isNull);
      expect(config.require('token'), equals('abc123'));
      expect(
        () => config.require('missing'),
        throwsA(
          isA<StateError>().having(
            (e) => e.message,
            'message',
            contains('Missing required config key: missing'),
          ),
        ),
      );
    });

    test(
      'default provider lifecycle methods preserve expected semantics',
      () async {
        final provider = _NoopProvider();

        await provider.configure(
          dyn.ConfigureRequest(config: dyn.MapConfig(<String, String>{})),
        );

        final check = await provider.check(
          <String, dynamic>{'old': true},
          <String, dynamic>{'new': true},
        );
        expect(check.inputs, equals(<String, dynamic>{'new': true}));
        expect(check.failures, isEmpty);

        final diff = await provider.diff(
          'id-1',
          <String, dynamic>{'old': true},
          <String, dynamic>{'new': true},
        );
        expect(diff.changes, isNull);
        expect(diff.replaces, isNull);
        expect(diff.stables, isNull);
        expect(diff.deleteBeforeReplace, isNull);

        final create = await provider.create(<String, dynamic>{'value': 42});
        expect(create.id, equals('id-1'));
        expect(create.outs, equals(<String, dynamic>{'echo': 42}));

        final read = await provider.read('id-1', <String, dynamic>{
          'state': 'present',
        });
        expect(read.id, equals('id-1'));
        expect(read.props, equals(<String, dynamic>{'state': 'present'}));
        expect(read.inputs, isNull);

        final update = await provider.update(
          'id-1',
          <String, dynamic>{'old': true},
          <String, dynamic>{'new': true},
        );
        expect(update.outs, isNull);

        await expectLater(
          provider.delete('id-1', <String, dynamic>{'state': 'present'}),
          completes,
        );
      },
    );

    test(
      'SerializedProviderReference.fromValue wraps plain string input',
      () async {
        final reference = dyn.SerializedProviderReference.fromValue(
          'encoded-provider-payload',
        );
        final encoded = await reference.encoded.toOutput().getValue();
        expect(encoded, equals('encoded-provider-payload'));
      },
    );
  });
}
