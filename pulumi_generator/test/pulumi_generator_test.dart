import 'package:build/build.dart';
import 'package:build_test/build_test.dart';
import 'package:pulumi_generator/pulumi_generator.dart';
import 'package:test/test.dart';

void main() {
  group('PulumiResourceGenerator', () {
    test('emits a registration extension for resource classes', () async {
      final builder = pulumiResourceGenerator(BuilderOptions.empty);

      await testBuilder(
        builder,
        {
          'pkg|lib/resources.dart': '''
class Resource {}

class ResourceRegistry {
  void registerResourceFactory(String type, dynamic factory) {}
}

class Echo extends Resource {
  static const String _resourceType = 'testprovider:index:Echo';

  Echo(String name, dynamic props, dynamic options);
}
''',
        },
        outputs: {
          'pkg|lib/resources.pulumi.dart': decodedMatches(
            allOf(
              contains('extension EchoRegistration on Echo'),
              contains('registerResourceFactory'),
              contains("'testprovider:index:Echo'"),
            ),
          ),
        },
      );
    });

    test(
      'does not emit extension when no Pulumi resources are present',
      () async {
        final builder = pulumiResourceGenerator(BuilderOptions.empty);

        final result = await testBuilder(builder, {
          'pkg|lib/no_resources.dart': '''
class NotAResource {
  static const String _resourceType = 'example:index:Ignored';
}
''',
        }, outputs: {});

        expect(
          result.outputs.any(
            (asset) => asset.path == 'lib/no_resources.pulumi.dart',
          ),
          isFalse,
        );
      },
    );

    test(
      'does not emit extension when resource type constant is missing',
      () async {
        final builder = pulumiResourceGenerator(BuilderOptions.empty);

        final result = await testBuilder(builder, {
          'pkg|lib/missing_type.dart': '''
class Resource {}

class BrokenResource extends Resource {
  BrokenResource(String name, dynamic props, dynamic options);
}
''',
        }, outputs: {});

        expect(
          result.outputs.any(
            (asset) => asset.path == 'lib/missing_type.pulumi.dart',
          ),
          isFalse,
        );
      },
    );
  });
}
