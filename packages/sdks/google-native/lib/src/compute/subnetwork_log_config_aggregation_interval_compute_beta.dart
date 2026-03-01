/// Can only be specified if VPC flow logging for this subnetwork is enabled. Toggles the aggregation interval for collecting flow logs. Increasing the interval time will reduce the amount of generated flow logs for long lasting connections. Default is an interval of 5 seconds per connection.
enum SubnetworkLogConfigAggregationIntervalComputeBeta {
  interval10Min("INTERVAL_10_MIN"),
  interval15Min("INTERVAL_15_MIN"),
  interval1Min("INTERVAL_1_MIN"),
  interval30Sec("INTERVAL_30_SEC"),
  interval5Min("INTERVAL_5_MIN"),
  interval5Sec("INTERVAL_5_SEC");

  const SubnetworkLogConfigAggregationIntervalComputeBeta(this.value);
  final String value;

  static SubnetworkLogConfigAggregationIntervalComputeBeta fromValue(String value) {
    for (final item in SubnetworkLogConfigAggregationIntervalComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubnetworkLogConfigAggregationIntervalComputeBeta value: $value');
  }
}

