import 'package:pulumi/pulumi.dart' as pulumi;

/// Allowed replication region
enum ReplicationRegion implements pulumi.PulumiEnum<String> {
  default_("Default"),
  westUs2("WestUs2"),
  northEurope("NorthEurope"),
  australiaEast("AustraliaEast"),
  brazilSouth("BrazilSouth"),
  southEastAsia("SouthEastAsia"),
  southAfricaNorth("SouthAfricaNorth"),
  none("None");

  const ReplicationRegion(this.wireValue);
  @override
  final String wireValue;

  static ReplicationRegion fromValue(String value) {
    for (final item in ReplicationRegion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReplicationRegion value: $value');
  }
}
