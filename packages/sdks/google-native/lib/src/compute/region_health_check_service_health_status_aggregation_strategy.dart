/// This field is deprecated. Use health_status_aggregation_policy instead. Policy for how the results from multiple health checks for the same endpoint are aggregated. - NO_AGGREGATION. An EndpointHealth message is returned for each backend in the health check service. - AND. If any backend's health check reports UNHEALTHY, then UNHEALTHY is the HealthState of the entire health check service. If all backend's are healthy, the HealthState of the health check service is HEALTHY. .
enum RegionHealthCheckServiceHealthStatusAggregationStrategy {
  and("AND"),
  noAggregation("NO_AGGREGATION");

  const RegionHealthCheckServiceHealthStatusAggregationStrategy(this.wireValue);
  final String wireValue;

  static RegionHealthCheckServiceHealthStatusAggregationStrategy fromValue(String value) {
    for (final item in RegionHealthCheckServiceHealthStatusAggregationStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionHealthCheckServiceHealthStatusAggregationStrategy value: $value');
  }
}
