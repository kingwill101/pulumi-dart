import 'package:pulumi/pulumi.dart' as pulumi;

/// The zone's visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources.
enum ManagedZoneVisibility implements pulumi.PulumiEnum<String> {
  public("public"),
  private("private");

  const ManagedZoneVisibility(this.wireValue);
  @override
  final String wireValue;

  static ManagedZoneVisibility fromValue(String value) {
    for (final item in ManagedZoneVisibility.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedZoneVisibility value: $value');
  }
}
