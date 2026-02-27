import 'package:pulumi/src/source_position.dart';
import 'package:test/test.dart';

void main() {
  group('analyzer parity', () {
    test('captures source metadata with a primary frame and stack frames', () {
      final metadata = captureRequestSourceMetadata(StackTrace.current);

      expect(metadata.sourcePosition, isNotNull);
      expect(metadata.sourcePosition!.uri, isNotEmpty);
      expect(metadata.sourcePosition!.line, greaterThan(0));
      expect(metadata.stackTrace.frames, isNotEmpty);
      expect(
        metadata.stackTrace.frames.first.pc.uri,
        equals(metadata.sourcePosition!.uri),
      );
    });
  });
}
