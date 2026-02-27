import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/resource/registry.dart';
import 'package:test/test.dart';

import '../test_utils/resource_test_utils.dart';

void main() {
  group('registrations parity', () {
    test(
      'registering the same resource type twice keeps the latest factory',
      () async {
        final registry = ResourceRegistry();
        const type = 'test:index:RegisteredFactory:parity';

        registry.registerResourceFactory(type, (name, props, options) {
          return dependencyResource(type, '$name-first');
        });
        registry.registerResourceFactory(type, (name, props, options) {
          return dependencyResource(type, '$name-second');
        });

        final result = registry.constructResource(
          type,
          'res',
          'urn:pulumi:stack::project::test:index:RegisteredFactory:parity::res',
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

    test('registered factory receives original props and options', () async {
      final registry = ResourceRegistry();
      const type = 'test:index:RegisteredFactory:props';
      late Map<String, Input<dynamic>> capturedProps;
      late ResourceOptions capturedOptions;

      registry.registerResourceFactory(type, (name, props, options) {
        capturedProps = props;
        capturedOptions = options;
        return dependencyResource(type, name);
      });

      final props = <String, Input<dynamic>>{'enabled': Input.fromValue(true)};
      final options = const ResourceOptions(protect: true);

      registry.constructResource(
        type,
        'res',
        'urn:pulumi:stack::project::test:index:RegisteredFactory:props::res',
        props,
        options,
      );

      expect(capturedProps, same(props));
      expect(capturedOptions, same(options));
    });
  });
}
