import 'package:mockito/mockito.dart';
import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../mocks/mocks.mocks.dart';

class _EmptyStack extends Stack {
  _EmptyStack();
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
  });
}
