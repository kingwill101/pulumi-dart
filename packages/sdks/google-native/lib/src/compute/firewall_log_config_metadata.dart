import 'package:pulumi/pulumi.dart' as pulumi;

/// This field can only be specified for a particular firewall rule if logging is enabled for that rule. This field denotes whether to include or exclude metadata for firewall logs.
enum FirewallLogConfigMetadata implements pulumi.PulumiEnum<String> {
  excludeAllMetadata("EXCLUDE_ALL_METADATA"),
  includeAllMetadata("INCLUDE_ALL_METADATA");

  const FirewallLogConfigMetadata(this.wireValue);
  @override
  final String wireValue;

  static FirewallLogConfigMetadata fromValue(String value) {
    for (final item in FirewallLogConfigMetadata.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallLogConfigMetadata value: $value');
  }
}
