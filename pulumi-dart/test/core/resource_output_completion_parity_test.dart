import 'package:mockito/mockito.dart';
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/constants.dart';
import 'package:test/test.dart';

import '../mocks/mocks.mocks.dart';

class _CompletionResource extends CustomResource {
  late final Output<String> arn;
  late final Output<int?> size;
  late final Output<String?> label;

  _CompletionResource(String name)
    : super(
        'sample:index:CompletionResource',
        name,
        const {},
        CustomResourceOptions(),
      ) {
    arn = registerOutput<String>('arn');
    size = registerOutput<int?>('size');
    label = registerOutput<String?>('label');
  }
}

void main() {
  group('resource output completion parity', () {
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

        final secretLabel = Struct()
          ..fields[Constants.specialSigKey] = (Value()
            ..stringValue = Constants.specialSecretSig)
          ..fields[Constants.valueName] = (Value()..stringValue = 'sensitive');

        final responseObject = Struct()
          ..fields['arn'] = (Value()..stringValue = 'arn:sample:123')
          ..fields['size'] = (Value()..numberValue = 7)
          ..fields['label'] = (Value()..structValue = secretLabel);
        resource.resolveOutputs(responseObject);
      });

      DeploymentImpl.setTestInstance(mockDeployment);
    });

    tearDown(DeploymentImpl.clearInstance);

    test(
      'hydrates typed output placeholders from register response object',
      () async {
        final resource = _CompletionResource('example');

        expect(await resource.arn.getValue(), equals('arn:sample:123'));
        expect(await resource.size.getValue(), equals(7));
        expect(await resource.label.getValue(), equals('sensitive'));
      },
    );

    test('coerces numeric protobuf values into integer outputs', () async {
      final resource = _CompletionResource('example');
      final size = await resource.size.getValue();

      expect(size, isA<int>());
      expect(size, equals(7));
    });

    test('preserves secret markers on resolved outputs', () async {
      final resource = _CompletionResource('example');
      final labelData = await resource.label.getData();

      expect(labelData.isSecret, isTrue);
      expect(labelData.value, equals('sensitive'));
    });
  });
}
