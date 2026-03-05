/// Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active.
enum ServiceIngress {
  ingressTrafficUnspecified("INGRESS_TRAFFIC_UNSPECIFIED"),
  ingressTrafficAll("INGRESS_TRAFFIC_ALL"),
  ingressTrafficInternalOnly("INGRESS_TRAFFIC_INTERNAL_ONLY"),
  ingressTrafficInternalLoadBalancer("INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER");

  const ServiceIngress(this.wireValue);
  final String wireValue;

  static ServiceIngress fromValue(String value) {
    for (final item in ServiceIngress.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceIngress value: $value');
  }
}

