/// This field can only be specified for a particular firewall rule if logging is enabled for that rule. This field denotes whether to include or exclude metadata for firewall logs.
enum FirewallLogConfigMetadataComputeBeta {
  excludeAllMetadata("EXCLUDE_ALL_METADATA"),
  includeAllMetadata("INCLUDE_ALL_METADATA");

  const FirewallLogConfigMetadataComputeBeta(this.wireValue);
  final String wireValue;

  static FirewallLogConfigMetadataComputeBeta fromValue(String value) {
    for (final item in FirewallLogConfigMetadataComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallLogConfigMetadataComputeBeta value: $value');
  }
}
