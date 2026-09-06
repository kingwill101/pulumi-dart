import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of support for content item
enum SupportTier implements pulumi.PulumiEnum<String> {
  valueMicrosoft("Microsoft"),
  valuePartner("Partner"),
  valueCommunity("Community");

  const SupportTier(this.wireValue);
  @override
  final String wireValue;

  static SupportTier fromValue(String value) {
    for (final item in SupportTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SupportTier value: $value');
  }
}
