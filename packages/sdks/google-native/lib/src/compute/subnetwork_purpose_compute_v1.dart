/// The purpose of the resource. This field can be either PRIVATE, REGIONAL_MANAGED_PROXY, PRIVATE_SERVICE_CONNECT, or INTERNAL_HTTPS_LOAD_BALANCER. PRIVATE is the default purpose for user-created subnets or subnets that are automatically created in auto mode networks. A subnet with purpose set to REGIONAL_MANAGED_PROXY is a user-created subnetwork that is reserved for regional Envoy-based load balancers. A subnet with purpose set to PRIVATE_SERVICE_CONNECT is used to publish services using Private Service Connect. A subnet with purpose set to INTERNAL_HTTPS_LOAD_BALANCER is a proxy-only subnet that can be used only by regional internal HTTP(S) load balancers. Note that REGIONAL_MANAGED_PROXY is the preferred setting for all regional Envoy load balancers. If unspecified, the subnet purpose defaults to PRIVATE. The enableFlowLogs field isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
enum SubnetworkPurposeComputeV1 {
  globalManagedProxy("GLOBAL_MANAGED_PROXY"),
  internalHttpsLoadBalancer("INTERNAL_HTTPS_LOAD_BALANCER"),
  private("PRIVATE"),
  privateNat("PRIVATE_NAT"),
  privateRfc1918("PRIVATE_RFC_1918"),
  privateServiceConnect("PRIVATE_SERVICE_CONNECT"),
  regionalManagedProxy("REGIONAL_MANAGED_PROXY");

  const SubnetworkPurposeComputeV1(this.wireValue);
  final String wireValue;

  static SubnetworkPurposeComputeV1 fromValue(String value) {
    for (final item in SubnetworkPurposeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubnetworkPurposeComputeV1 value: $value');
  }
}
