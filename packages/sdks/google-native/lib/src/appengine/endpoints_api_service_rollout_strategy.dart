/// Endpoints rollout strategy. If FIXED, config_id must be specified. If MANAGED, config_id must be omitted.
enum EndpointsApiServiceRolloutStrategy {
  unspecifiedRolloutStrategy("UNSPECIFIED_ROLLOUT_STRATEGY"),
  fixed("FIXED"),
  managed("MANAGED");

  const EndpointsApiServiceRolloutStrategy(this.wireValue);
  final String wireValue;

  static EndpointsApiServiceRolloutStrategy fromValue(String value) {
    for (final item in EndpointsApiServiceRolloutStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointsApiServiceRolloutStrategy value: $value');
  }
}
