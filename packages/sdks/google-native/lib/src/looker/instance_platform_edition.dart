import 'package:pulumi/pulumi.dart' as pulumi;

/// Platform edition.
enum InstancePlatformEdition implements pulumi.PulumiEnum<String> {
  platformEditionUnspecified("PLATFORM_EDITION_UNSPECIFIED"),
  lookerCoreTrial("LOOKER_CORE_TRIAL"),
  lookerCoreStandard("LOOKER_CORE_STANDARD"),
  lookerCoreStandardAnnual("LOOKER_CORE_STANDARD_ANNUAL"),
  lookerCoreEnterpriseAnnual("LOOKER_CORE_ENTERPRISE_ANNUAL"),
  lookerCoreEmbedAnnual("LOOKER_CORE_EMBED_ANNUAL");

  const InstancePlatformEdition(this.wireValue);
  @override
  final String wireValue;

  static InstancePlatformEdition fromValue(String value) {
    for (final item in InstancePlatformEdition.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstancePlatformEdition value: $value');
  }
}
