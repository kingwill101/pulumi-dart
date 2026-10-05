import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Immutable. The type of the zone.
enum ZoneType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  raw("RAW"),
  curated("CURATED");

  const ZoneType(this.wireValue);
  @override
  final String wireValue;

  static ZoneType fromValue(String value) {
    for (final item in ZoneType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ZoneType value: $value');
  }
}
