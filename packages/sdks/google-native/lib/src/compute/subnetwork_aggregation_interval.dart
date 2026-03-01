/// Can only be specified if VPC flow logging for this subnetwork is enabled. Sets the aggregation interval for collecting flow logs. Increasing the interval time reduces the amount of generated flow logs for long-lasting connections. Default is an interval of 5 seconds per connection. Valid values: INTERVAL_5_SEC, INTERVAL_30_SEC, INTERVAL_1_MIN, INTERVAL_5_MIN, INTERVAL_10_MIN, INTERVAL_15_MIN.
enum SubnetworkAggregationInterval {
  interval10Min("INTERVAL_10_MIN"),
  interval15Min("INTERVAL_15_MIN"),
  interval1Min("INTERVAL_1_MIN"),
  interval30Sec("INTERVAL_30_SEC"),
  interval5Min("INTERVAL_5_MIN"),
  interval5Sec("INTERVAL_5_SEC");

  const SubnetworkAggregationInterval(this.value);
  final String value;

  static SubnetworkAggregationInterval fromValue(String value) {
    for (final item in SubnetworkAggregationInterval.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubnetworkAggregationInterval value: $value');
  }
}

