import 'package:mockito/mockito.dart';
import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../mocks/mocks.mocks.dart';

class _CycleComponentResource extends ComponentResource {
  late final Output<String> output1;

  _CycleComponentResource(String name, [ComponentResourceOptions? opts])
    : super(
        'python:test_resource_dep_cycle:MockComponentResource',
        name,
        {},
        opts,
        remote: true,
      ) {
    output1 = urn;
    registerOutputs({'output1': output1});
  }
}

class _CycleCustomResource extends CustomResource {
  _CycleCustomResource({
    required String name,
    required Input<String> input1,
    CustomResourceOptions? opts,
  }) : super(
         'python:test_resource_dep_cycle:MockResource',
         name,
         {'input1': input1},
         opts ?? CustomResourceOptions(),
       );
}

void main() {
  group('resource dependency cycle regression', () {
    late MockDeploymentImpl mockDeployment;
    late List<Future<void>> operations;

    setUp(() {
      mockDeployment = MockDeploymentImpl();
      operations = <Future<void>>[];
      when(mockDeployment.stack).thenThrow(StateError('Stack not set'));

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

        if (resource is CustomResource) {
          resource.resolveId('${resource.getResourceName()}_id', isKnown: true);
        }
      });

      when(mockDeployment.registerResourceOperation(any)).thenAnswer((
        invocation,
      ) {
        operations.add(invocation.positionalArguments.first as Future<void>);
      });

      when(
        mockDeployment.registerResourceOutputs(any, any),
      ).thenAnswer((_) async {});

      DeploymentImpl.setTestInstance(mockDeployment);
    });

    tearDown(DeploymentImpl.clearInstance);

    test('resource graph with output reference does not hang', () async {
      final component = _CycleComponentResource('c');
      final resource = _CycleCustomResource(
        name: 'r',
        input1: Input.fromOutput(component.output1),
        opts: CustomResourceOptions(parent: component),
      );

      await Future.wait(operations).timeout(const Duration(seconds: 2));

      expect(
        await component.urn.getValue(),
        equals(
          'urn:pulumi:stack::project::python:test_resource_dep_cycle:MockComponentResource::c',
        ),
      );
      expect(
        await resource.urn.getValue(),
        equals(
          'urn:pulumi:stack::project::python:test_resource_dep_cycle:MockResource::r',
        ),
      );
    });

    test(
      'parent resource may also appear in dependsOn without hanging',
      () async {
        final parent = ComponentResource(
          'pkg:index:first',
          'first',
          {},
          ComponentResourceOptions(),
        );
        final child = ComponentResource(
          'pkg:index:second',
          'second',
          {},
          ComponentResourceOptions(parent: parent, dependsOn: [parent]),
        );
        final resource = _CycleCustomResource(
          name: 'myresource',
          input1: Input.fromValue('ok'),
          opts: CustomResourceOptions(parent: child),
        );

        await Future.wait(operations).timeout(const Duration(seconds: 2));
        expect(
          await resource.urn.getValue(),
          equals(
            'urn:pulumi:stack::project::python:test_resource_dep_cycle:MockResource::myresource',
          ),
        );
      },
    );
  });
}
