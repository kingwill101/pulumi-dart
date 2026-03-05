/// Can only be specified if VPC flow logs for this subnetwork is enabled. Configures whether all, none or a subset of metadata fields should be added to the reported VPC flow logs. Default is EXCLUDE_ALL_METADATA.
enum SubnetworkLogConfigMetadataComputeBeta {
  customMetadata("CUSTOM_METADATA"),
  excludeAllMetadata("EXCLUDE_ALL_METADATA"),
  includeAllMetadata("INCLUDE_ALL_METADATA");

  const SubnetworkLogConfigMetadataComputeBeta(this.wireValue);
  final String wireValue;

  static SubnetworkLogConfigMetadataComputeBeta fromValue(String value) {
    for (final item in SubnetworkLogConfigMetadataComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubnetworkLogConfigMetadataComputeBeta value: $value');
  }
}

