/// Site load balancing.
enum SiteLoadBalancing {
  valueWeightedRoundRobin("WeightedRoundRobin"),
  valueLeastRequests("LeastRequests"),
  valueLeastResponseTime("LeastResponseTime"),
  valueWeightedTotalTraffic("WeightedTotalTraffic"),
  valueRequestHash("RequestHash"),
  valuePerSiteRoundRobin("PerSiteRoundRobin"),
  valueLeastRequestsWithTieBreaker("LeastRequestsWithTieBreaker");

  const SiteLoadBalancing(this.wireValue);
  final String wireValue;

  static SiteLoadBalancing fromValue(String value) {
    for (final item in SiteLoadBalancing.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SiteLoadBalancing value: $value');
  }
}
