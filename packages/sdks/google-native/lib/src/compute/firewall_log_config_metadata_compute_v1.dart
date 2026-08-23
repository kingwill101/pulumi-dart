/// This field can only be specified for a particular firewall rule if logging is enabled for that rule. This field denotes whether to include or exclude metadata for firewall logs.
enum FirewallLogConfigMetadataComputeV1 {
  excludeAllMetadata("EXCLUDE_ALL_METADATA"),
  includeAllMetadata("INCLUDE_ALL_METADATA");

  const FirewallLogConfigMetadataComputeV1(this.wireValue);
  final String wireValue;

  static FirewallLogConfigMetadataComputeV1 fromValue(String value) {
    for (final item in FirewallLogConfigMetadataComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallLogConfigMetadataComputeV1 value: $value');
  }
}
