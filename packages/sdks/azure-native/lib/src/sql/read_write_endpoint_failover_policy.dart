/// Failover policy of the read-write endpoint for the failover group. If failoverPolicy is Automatic then failoverWithDataLossGracePeriodMinutes is required.
enum ReadWriteEndpointFailoverPolicy {
  valueManual("Manual"),
  valueAutomatic("Automatic");

  const ReadWriteEndpointFailoverPolicy(this.wireValue);
  final String wireValue;

  static ReadWriteEndpointFailoverPolicy fromValue(String value) {
    for (final item in ReadWriteEndpointFailoverPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReadWriteEndpointFailoverPolicy value: $value');
  }
}

