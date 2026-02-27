import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/resource/registry.dart';
import 'package:test/test.dart';

import '../../test_utils/resource_test_utils.dart';

void main() {
  group('resource registry', () {
    test(
      'constructResource falls back to dependency resource when unregistered',
      () async {
        final registry = ResourceRegistry();
        final urn = 'urn:pulumi:stack::project::test:index:Unregistered::res';

        final result = registry.constructResource(
          'test:index:Unregistered',
          'res',
          urn,
          const {},
          const ResourceOptions(),
        );

        expect(result, isA<DependencyResource>());
        final dependency = result as DependencyResource;
        expect(await dependency.urn.getValue(), equals(urn));
        expect(dependency.getResourceType(), equals('test:index:Unregistered'));
        expect(dependency.getResourceName(), equals('res'));
      },
    );

    test('registered factory is used for constructResource', () async {
      final registry = ResourceRegistry();
      final type = 'test:index:RegisteredFactory:one';
      late String capturedName;
      late Map<String, Input<dynamic>> capturedProps;
      late ResourceOptions capturedOptions;

      registry.registerResourceFactory(type, (name, props, options) {
        capturedName = name;
        capturedProps = props;
        capturedOptions = options;
        return dependencyResource(type, '$name-factory');
      });

      final props = <String, Input<dynamic>>{'enabled': Input.fromValue(true)};
      final options = const ResourceOptions(protect: true);

      final result = registry.constructResource(
        type,
        'res',
        'urn:pulumi:stack::project::test:index:RegisteredFactory:one::res',
        props,
        options,
      );

      expect(result, isA<DependencyResource>());
      expect(capturedName, equals('res'));
      expect(capturedProps, same(props));
      expect(capturedOptions, same(options));
      expect(
        await result.urn.getValue(),
        equals('urn:pulumi:stack::project::$type::res-factory'),
      );
    });

    test(
      'latest factory registration overrides previous for same type',
      () async {
        final registry = ResourceRegistry();
        final type = 'test:index:RegisteredFactory:override';

        registry.registerResourceFactory(type, (name, props, options) {
          return dependencyResource(type, '$name-first');
        });
        registry.registerResourceFactory(type, (name, props, options) {
          return dependencyResource(type, '$name-second');
        });

        final result = registry.constructResource(
          type,
          'res',
          'urn:pulumi:stack::project::test:index:RegisteredFactory:override::res',
          const {},
          const ResourceOptions(),
        );

        expect(result, isA<DependencyResource>());
        expect(
          await result.urn.getValue(),
          equals('urn:pulumi:stack::project::$type::res-second'),
        );
      },
    );
  });
}
