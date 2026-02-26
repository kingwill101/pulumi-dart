import 'package:mockito/mockito.dart';
import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../mocks/mocks.mocks.dart';

class _EmptyStack extends Stack {
  _EmptyStack();
}

class _SingleOutputStack extends Stack {
  _SingleOutputStack();

  @override
  List<OutputProperty> getOutputProperties() {
    return [OutputProperty('result', Output.create<Object?>('value'))];
  }
}

void main() {
  group('stack register outputs parity', () {
    late MockDeploymentImpl mockDeployment;

    setUp(() {
      mockDeployment = MockDeploymentImpl();
      when(mockDeployment.projectName).thenReturn('project');
      when(mockDeployment.stackName).thenReturn('stack');

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
      });

      when(mockDeployment.registerResourceOperation(any)).thenAnswer((_) {});
      when(
        mockDeployment.registerResourceOutputs(any, any),
      ).thenAnswer((_) async {});

      DeploymentImpl.setTestInstance(mockDeployment);
    });

    tearDown(DeploymentImpl.clearInstance);

    test('stack registers outputs even when no output properties exist', () {
      final stack = _EmptyStack();

      stack.registerPropertyOutputs();

      final verification = verify(
        mockDeployment.registerResourceOutputs(captureAny, captureAny),
      )..called(1);
      expect(verification.captured.first, same(stack));
    });

    test(
      'stack with output property registers outputs and preserves output key in payload assumptions',
      () async {
        final stack = _SingleOutputStack();

        stack.registerPropertyOutputs();

        final verification = verify(
          mockDeployment.registerResourceOutputs(captureAny, captureAny),
        )..called(1);

        final capturedResource = verification.captured[0] as Resource;
        final capturedOutputs =
            verification.captured[1] as Output<Map<String, dynamic>>;
        final outputsMap = await capturedOutputs.getValue();

        expect(capturedResource, same(stack));
        expect(outputsMap, contains('result'));
      },
    );
  });
}
