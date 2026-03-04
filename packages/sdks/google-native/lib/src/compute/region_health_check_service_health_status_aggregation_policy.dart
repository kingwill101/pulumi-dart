/// Optional. Policy for how the results from multiple health checks for the same endpoint are aggregated. Defaults to NO_AGGREGATION if unspecified. - NO_AGGREGATION. An EndpointHealth message is returned for each pair in the health check service. - AND. If any health check of an endpoint reports UNHEALTHY, then UNHEALTHY is the HealthState of the endpoint. If all health checks report HEALTHY, the HealthState of the endpoint is HEALTHY. . This is only allowed with regional HealthCheckService.
enum RegionHealthCheckServiceHealthStatusAggregationPolicy {
  and("AND"),
  noAggregation("NO_AGGREGATION");

  const RegionHealthCheckServiceHealthStatusAggregationPolicy(this.wireValue);
  final String wireValue;

  static RegionHealthCheckServiceHealthStatusAggregationPolicy fromValue(
    String value,
  ) {
    for (final item
        in RegionHealthCheckServiceHealthStatusAggregationPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RegionHealthCheckServiceHealthStatusAggregationPolicy value: $value',
    );
  }
}
