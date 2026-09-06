import 'package:pulumi/pulumi.dart' as pulumi;

/// The effect.
enum ResourceProviderCapabilitiesEffect implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  allow("Allow"),
  disallow("Disallow");

  const ResourceProviderCapabilitiesEffect(this.wireValue);
  @override
  final String wireValue;

  static ResourceProviderCapabilitiesEffect fromValue(String value) {
    for (final item in ResourceProviderCapabilitiesEffect.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceProviderCapabilitiesEffect value: $value');
  }
}
