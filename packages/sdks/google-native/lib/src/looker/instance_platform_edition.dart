/// Platform edition.
enum InstancePlatformEdition {
  platformEditionUnspecified("PLATFORM_EDITION_UNSPECIFIED"),
  lookerCoreTrial("LOOKER_CORE_TRIAL"),
  lookerCoreStandard("LOOKER_CORE_STANDARD"),
  lookerCoreStandardAnnual("LOOKER_CORE_STANDARD_ANNUAL"),
  lookerCoreEnterpriseAnnual("LOOKER_CORE_ENTERPRISE_ANNUAL"),
  lookerCoreEmbedAnnual("LOOKER_CORE_EMBED_ANNUAL");

  const InstancePlatformEdition(this.wireValue);
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

