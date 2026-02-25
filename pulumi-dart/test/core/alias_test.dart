import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

void main() {
  group('Alias', () {
    test('serializes urn alias', () async {
      final alias = Alias(urn: 'urn:pulumi:dev::proj::pkg:type::name');

      final serialized = await alias.serializeAsync();

      expect(serialized.hasUrn(), isTrue);
      expect(serialized.urn, 'urn:pulumi:dev::proj::pkg:type::name');
    });

    test('serializes spec alias with noParent', () async {
      final alias = Alias(name: Input.fromValue('renamed'), noParent: true);

      final serialized = await alias.serializeAsync();

      expect(serialized.hasSpec(), isTrue);
      expect(serialized.spec.name, 'renamed');
      expect(serialized.spec.noParent, isTrue);
      expect(serialized.spec.parentUrn, isEmpty);
    });

    test('rejects urn mixed with spec fields', () async {
      final alias = Alias(
        urn: 'urn:pulumi:dev::proj::pkg:type::name',
        name: Input.fromValue('renamed'),
      );

      expect(alias.serializeAsync(), throwsArgumentError);
    });
  });
}
