import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

void main() {
  group('chained_failure parity', () {
    test('failed source output propagates through apply chains', () async {
      final source = Output<String>(
        Future<OutputData<String>>.error(StateError('upstream failure')),
      );
      final chained = source.apply((v) => '$v-suffix').apply((v) => '$v-final');

      await expectLater(chained.getData(), throwsStateError);
    });
  });
}
