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

class _TestStack extends Stack {
  _TestStack();
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

    test(
      'resource transformations can rewrite args/options with stable parent',
      () {
        final root = DependencyResource(
          'urn:pulumi:stack::project::pkg:type::root',
        );
        final transformedOptions = ComponentResourceOptions(
          parent: root,
          protect: true,
        );

        _ValidComponent(
          'rewritten',
          {'value': 1},
          ComponentResourceOptions(
            parent: root,
            resourceTransformations: [
              (args) => ResourceTransformationResult(
                Input.mapToInputs({'value': 42}),
                transformedOptions,
              ),
            ],
          ),
        );

        final captured = verify(
          mockDeployment.readOrRegisterResource(
            resource: anyNamed('resource'),
            remote: anyNamed('remote'),
            newDependency: anyNamed('newDependency'),
            args: captureAnyNamed('args'),
            opts: captureAnyNamed('opts'),
            registerPackageRequest: anyNamed('registerPackageRequest'),
          ),
        ).captured;

        final capturedArgs = captured[0] as Map<String, Input<dynamic>>;
        final capturedOpts = captured[1] as ResourceOptions;
        expect(capturedArgs['value'], isNotNull);
        expect(capturedOpts.protect, isTrue);
        expect(identical(capturedOpts.parent, root), isTrue);
      },
    );

    test('resource transformations cannot change parent', () {
      final root = DependencyResource(
        'urn:pulumi:stack::project::pkg:type::root',
      );
      final other = DependencyResource(
        'urn:pulumi:stack::project::pkg:type::other',
      );

      expect(
        () => _ValidComponent(
          'invalid-parent-transform',
          {'value': 1},
          ComponentResourceOptions(
            parent: root,
            resourceTransformations: [
              (args) => ResourceTransformationResult(
                Input.mapToInputs({'value': 2}),
                ComponentResourceOptions(parent: other),
              ),
            ],
          ),
        ),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('resource constructor merges inferred stack parent when unset', () {
      final inferredParent = _TestStack();
      when(mockDeployment.stack).thenReturn(inferredParent);
      clearInteractions(mockDeployment);

      _ValidComponent('inherits-parent', {
        'value': 1,
      }, ComponentResourceOptions());

      final captured = verify(
        mockDeployment.readOrRegisterResource(
          resource: anyNamed('resource'),
          remote: anyNamed('remote'),
          newDependency: anyNamed('newDependency'),
          args: anyNamed('args'),
          opts: captureAnyNamed('opts'),
          registerPackageRequest: anyNamed('registerPackageRequest'),
        ),
      ).captured;

      final capturedOpts = captured.single as ResourceOptions;
      expect(identical(capturedOpts.parent, inferredParent), isTrue);
    });
  });
}
