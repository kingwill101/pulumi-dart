import 'package:mockito/mockito.dart';
import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../mocks/mocks.mocks.dart';

class _ValidComponent extends ComponentResource {
  _ValidComponent(
    String name,
    Map<String, dynamic> args, [
    ComponentResourceOptions? opts,
  ]) : super('my:module:ValidComponent', name, Input.mapToInputs(args), opts);
}

class _BadComponent extends ComponentResource {
  _BadComponent(String name, int arg)
    : super('my:module:BadComponent', name, arg as dynamic, null);
}

void main() {
  group('resource constructor parity', () {
    late MockDeploymentImpl mockDeployment;

    setUp(() {
      mockDeployment = MockDeploymentImpl();

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

      DeploymentImpl.setTestInstance(mockDeployment);
    });

    tearDown(DeploymentImpl.clearInstance);

    test('component accepts mapping args', () {
      final root = DependencyResource(
        'urn:pulumi:stack::project::pkg:type::root',
      );
      expect(
        () => _ValidComponent('ok', {
          'value': 1,
        }, ComponentResourceOptions(parent: root)),
        returnsNormally,
      );
    });

    test('component rejects non-mapping args', () {
      expect(() => _BadComponent('bad', 4), throwsA(isA<TypeError>()));
    });
  });
}
