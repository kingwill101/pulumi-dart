/// Failover policy of the read-only endpoint for the failover group.
enum ReadOnlyEndpointFailoverPolicy {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const ReadOnlyEndpointFailoverPolicy(this.value);
  final String value;

  static ReadOnlyEndpointFailoverPolicy fromValue(String value) {
    for (final item in ReadOnlyEndpointFailoverPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReadOnlyEndpointFailoverPolicy value: $value');
  }
}

