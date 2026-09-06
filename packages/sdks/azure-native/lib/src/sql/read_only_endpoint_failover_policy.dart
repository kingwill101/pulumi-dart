import 'package:pulumi/pulumi.dart' as pulumi;

/// Failover policy of the read-only endpoint for the failover group.
enum ReadOnlyEndpointFailoverPolicy implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const ReadOnlyEndpointFailoverPolicy(this.wireValue);
  @override
  final String wireValue;

  static ReadOnlyEndpointFailoverPolicy fromValue(String value) {
    for (final item in ReadOnlyEndpointFailoverPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReadOnlyEndpointFailoverPolicy value: $value');
  }
}
