import 'package:pulumi/pulumi.dart' as pulumi;

/// Can only be specified if VPC flow logging for this subnetwork is enabled. Configures whether metadata fields should be added to the reported VPC flow logs. Options are INCLUDE_ALL_METADATA, EXCLUDE_ALL_METADATA, and CUSTOM_METADATA. Default is EXCLUDE_ALL_METADATA.
enum SubnetworkMetadata implements pulumi.PulumiEnum<String> {
  excludeAllMetadata("EXCLUDE_ALL_METADATA"),
  includeAllMetadata("INCLUDE_ALL_METADATA");

  const SubnetworkMetadata(this.wireValue);
  @override
  final String wireValue;

  static SubnetworkMetadata fromValue(String value) {
    for (final item in SubnetworkMetadata.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubnetworkMetadata value: $value');
  }
}
