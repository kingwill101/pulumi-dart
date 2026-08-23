/// The type indicates the intended use of the security policy. - CLOUD_ARMOR: Cloud Armor backend security policies can be configured to filter incoming HTTP requests targeting backend services. They filter requests before they hit the origin servers. - CLOUD_ARMOR_EDGE: Cloud Armor edge security policies can be configured to filter incoming HTTP requests targeting backend services (including Cloud CDN-enabled) as well as backend buckets (Cloud Storage). They filter requests before the request is served from Google's cache. - CLOUD_ARMOR_INTERNAL_SERVICE: Cloud Armor internal service policies can be configured to filter HTTP requests targeting services managed by Traffic Director in a service mesh. They filter requests before the request is served from the application. - CLOUD_ARMOR_NETWORK: Cloud Armor network policies can be configured to filter packets targeting network load balancing resources such as backend services, target pools, target instances, and instances with external IPs. They filter requests before the request is served from the application. This field can be set only at resource creation time.
enum SecurityPolicyTypeComputeV1 {
  cloudArmor("CLOUD_ARMOR"),
  cloudArmorEdge("CLOUD_ARMOR_EDGE"),
  cloudArmorNetwork("CLOUD_ARMOR_NETWORK");

  const SecurityPolicyTypeComputeV1(this.wireValue);
  final String wireValue;

  static SecurityPolicyTypeComputeV1 fromValue(String value) {
    for (final item in SecurityPolicyTypeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyTypeComputeV1 value: $value');
  }
}
