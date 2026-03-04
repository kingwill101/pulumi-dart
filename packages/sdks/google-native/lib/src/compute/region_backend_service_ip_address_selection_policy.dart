/// Specifies a preference for traffic sent from the proxy to the backend (or from the client to the backend for proxyless gRPC). The possible values are: - IPV4_ONLY: Only send IPv4 traffic to the backends of the backend service (Instance Group, Managed Instance Group, Network Endpoint Group), regardless of traffic from the client to the proxy. Only IPv4 health checks are used to check the health of the backends. This is the default setting. - PREFER_IPV6: Prioritize the connection to the endpoint's IPv6 address over its IPv4 address (provided there is a healthy IPv6 address). - IPV6_ONLY: Only send IPv6 traffic to the backends of the backend service (Instance Group, Managed Instance Group, Network Endpoint Group), regardless of traffic from the client to the proxy. Only IPv6 health checks are used to check the health of the backends. This field is applicable to either: - Advanced Global External HTTPS Load Balancing (load balancing scheme EXTERNAL_MANAGED), - Regional External HTTPS Load Balancing, - Internal TCP Proxy (load balancing scheme INTERNAL_MANAGED), - Regional Internal HTTPS Load Balancing (load balancing scheme INTERNAL_MANAGED), - Traffic Director with Envoy proxies and proxyless gRPC (load balancing scheme INTERNAL_SELF_MANAGED).
enum RegionBackendServiceIpAddressSelectionPolicy {
  ipv4Only("IPV4_ONLY"),
  ipv6Only("IPV6_ONLY"),
  ipAddressSelectionPolicyUnspecified(
    "IP_ADDRESS_SELECTION_POLICY_UNSPECIFIED",
  ),
  preferIpv6("PREFER_IPV6");

  const RegionBackendServiceIpAddressSelectionPolicy(this.wireValue);
  final String wireValue;

  static RegionBackendServiceIpAddressSelectionPolicy fromValue(String value) {
    for (final item in RegionBackendServiceIpAddressSelectionPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RegionBackendServiceIpAddressSelectionPolicy value: $value',
    );
  }
}
