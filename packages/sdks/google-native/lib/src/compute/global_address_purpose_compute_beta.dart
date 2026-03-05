/// The purpose of this resource, which can be one of the following values: - GCE_ENDPOINT for addresses that are used by VM instances, alias IP ranges, load balancers, and similar resources. - DNS_RESOLVER for a DNS resolver address in a subnetwork for a Cloud DNS inbound forwarder IP addresses (regional internal IP address in a subnet of a VPC network) - VPC_PEERING for global internal IP addresses used for private services access allocated ranges. - NAT_AUTO for the regional external IP addresses used by Cloud NAT when allocating addresses using automatic NAT IP address allocation. - IPSEC_INTERCONNECT for addresses created from a private IP range that are reserved for a VLAN attachment in an *HA VPN over Cloud Interconnect* configuration. These addresses are regional resources. - `SHARED_LOADBALANCER_VIP` for an internal IP address that is assigned to multiple internal forwarding rules. - `PRIVATE_SERVICE_CONNECT` for a private network address that is used to configure Private Service Connect. Only global internal addresses can use this purpose.
enum GlobalAddressPurposeComputeBeta {
  dnsResolver("DNS_RESOLVER"),
  gceEndpoint("GCE_ENDPOINT"),
  ipsecInterconnect("IPSEC_INTERCONNECT"),
  natAuto("NAT_AUTO"),
  privateServiceConnect("PRIVATE_SERVICE_CONNECT"),
  serverless("SERVERLESS"),
  sharedLoadbalancerVip("SHARED_LOADBALANCER_VIP"),
  vpcPeering("VPC_PEERING");

  const GlobalAddressPurposeComputeBeta(this.wireValue);
  final String wireValue;

  static GlobalAddressPurposeComputeBeta fromValue(String value) {
    for (final item in GlobalAddressPurposeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalAddressPurposeComputeBeta value: $value');
  }
}

