import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/src/pulumirpc/pulumi/resource.pb.dart';
import 'package:pulumi/src/source_position.dart';
import 'package:test/test.dart';

void main() {
  group('proto', () {
    test(
      'resource call request preserves metadata across protobuf round-trip',
      () {
        final request = ResourceCallRequest()
          ..tok = 'test:index:method'
          ..args = (Struct()..fields['arg'] = (Value()..stringValue = 'value'));
        applyRequestSourceMetadata(request, StackTrace.current);

        final roundTripped = ResourceCallRequest.fromBuffer(
          request.writeToBuffer(),
        );
        expect(roundTripped.tok, equals('test:index:method'));
        expect(roundTripped.args.fields['arg']?.stringValue, equals('value'));
        expect(roundTripped.hasSourcePosition(), isTrue);
        expect(roundTripped.sourcePosition.line, greaterThan(0));
        expect(roundTripped.stackTrace.frames, isNotEmpty);
      },
    );
  });
}
