import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

void main() {
  group('future_failure', () {
    test('output backed by failing future surfaces failure', () async {
      final failing = Output<String>(
        Future<OutputData<String>>.error(StateError('boom')),
      );

      await expectLater(failing.getData(), throwsStateError);
    });
  });
}
