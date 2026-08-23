/// Required. All backend services and forwarding rules referenced by this extension must share the same load balancing scheme. Supported values: `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`. For more information, refer to [Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service).
enum LbRouteExtensionLoadBalancingScheme {
  loadBalancingSchemeUnspecified("LOAD_BALANCING_SCHEME_UNSPECIFIED"),
  internalManaged("INTERNAL_MANAGED"),
  externalManaged("EXTERNAL_MANAGED");

  const LbRouteExtensionLoadBalancingScheme(this.wireValue);
  final String wireValue;

  static LbRouteExtensionLoadBalancingScheme fromValue(String value) {
    for (final item in LbRouteExtensionLoadBalancingScheme.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LbRouteExtensionLoadBalancingScheme value: $value');
  }
}
