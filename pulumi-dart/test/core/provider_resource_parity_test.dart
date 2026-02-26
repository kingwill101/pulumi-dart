import 'package:pulumi/src/constants.dart';
import 'package:pulumi/src/resource/provider_resource.dart';
import 'package:test/test.dart';

void main() {
  group('provider resource', () {
    test('reference keeps package and derives resource name from urn', () {
      final provider = ProviderResource.reference(
        'aws',
        'urn:pulumi:stack::project::pulumi:providers:aws::default_6_0_0',
        id: 'provider-id',
      );

      expect(provider.package, equals('aws'));
      expect(provider.getResourceType(), equals('pulumi:providers:aws'));
      expect(provider.getResourceName(), equals('default_6_0_0'));
    });

    test(
      'reference falls back to provider name when urn shape is unexpected',
      () {
        final provider = ProviderResource.reference('aws', 'invalid-urn');
        expect(provider.getResourceName(), equals('provider'));
      },
    );

    test('reference with unknown id produces unknown output data', () async {
      final provider = ProviderResource.reference(
        'aws',
        'urn:pulumi:stack::project::pulumi:providers:aws::default_6_0_0',
      );
      final idData = await provider.id.getData();

      expect(idData.isKnown, isFalse);
      expect(idData.value, isNull);
    });

    test('register includes unknown sentinel for unknown id', () async {
      final provider = ProviderResource.reference(
        'aws',
        'urn:pulumi:stack::project::pulumi:providers:aws::default_6_0_0',
      );

      final registrationId = await ProviderResource.register(provider);
      expect(
        registrationId,
        equals(
          'urn:pulumi:stack::project::pulumi:providers:aws::default_6_0_0::${Constants.unknownValue}',
        ),
      );
    });

    test('register uses known id when available', () async {
      final provider = ProviderResource.reference(
        'aws',
        'urn:pulumi:stack::project::pulumi:providers:aws::default_6_0_0',
        id: 'provider-id',
      );

      final registrationId = await ProviderResource.register(provider);
      expect(
        registrationId,
        equals(
          'urn:pulumi:stack::project::pulumi:providers:aws::default_6_0_0::provider-id',
        ),
      );
    });

    test('register caches registrationId and keeps it stable', () async {
      final provider = ProviderResource.reference(
        'aws',
        'urn:pulumi:stack::project::pulumi:providers:aws::default_6_0_0',
        id: 'provider-id',
      );
      provider.registrationId = null;

      final first = await ProviderResource.register(provider);
      final second = await ProviderResource.register(provider);

      expect(first, isNotNull);
      expect(second, equals(first));
      expect(provider.registrationId, equals(first));
    });

    test(
      'register normalizes empty and sentinel ids to unknown sentinel',
      () async {
        final cases = <String>['', Constants.unknownNumberValue];

        for (final id in cases) {
          final provider = ProviderResource.reference(
            'aws',
            'urn:pulumi:stack::project::pulumi:providers:aws::default_6_0_0',
            id: id,
          );

          final registrationId = await ProviderResource.register(provider);
          expect(
            registrationId,
            equals(
              'urn:pulumi:stack::project::pulumi:providers:aws::default_6_0_0::${Constants.unknownValue}',
            ),
          );
        }
      },
    );

    test(
      'reference keeps package/type invariants while using urn-derived name',
      () {
        final provider = ProviderResource.reference(
          'azure-native',
          'urn:pulumi:stack::project::pulumi:providers:aws::default_6_0_0',
          id: 'provider-id',
        );

        expect(provider.package, equals('azure-native'));
        expect(
          provider.getResourceType(),
          equals('pulumi:providers:azure-native'),
        );
        expect(provider.getResourceName(), equals('default_6_0_0'));
      },
    );
  });
}
