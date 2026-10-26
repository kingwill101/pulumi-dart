import 'package:pulumi/pulumi.dart' as pulumi;

/// The zone's visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources.
enum ManagedZoneVisibilityDnsV1beta2 implements pulumi.PulumiEnum<String> {
  public("public"),
  private("private");

  const ManagedZoneVisibilityDnsV1beta2(this.wireValue);
  @override
  final String wireValue;

  static ManagedZoneVisibilityDnsV1beta2 fromValue(String value) {
    for (final item in ManagedZoneVisibilityDnsV1beta2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedZoneVisibilityDnsV1beta2 value: $value');
  }
}
