// ignore_for_file: unused_element, unnecessary_cast


/// ServiceCIDRSpec define the CIDRs the user wants to use for allocating ClusterIPs for Services.
class ServiceCIDRSpec {
  /// CIDRs defines the IP blocks in CIDR notation (e.g. "192.168.0.0/24" or "2001:db8::/64") from which to assign service cluster IPs. Max of two CIDRs is allowed, one of each IP family. This field is immutable.
  final List<String>? cidrs;

  /// Creates a new [ServiceCIDRSpec].
  /// [cidrs] CIDRs defines the IP blocks in CIDR notation (e.g. "192.168.0.0/24" or "2001:db8::/64") from which to assign service cluster IPs. Max of two CIDRs is allowed, one of each IP family. This field is immutable.
  ServiceCIDRSpec({
    this.cidrs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrs': ?cidrs,
    };
  }

  factory ServiceCIDRSpec.fromMap(Map<String, dynamic> map) {
    return ServiceCIDRSpec(
      cidrs: map['cidrs'] == null ? null : (map['cidrs'] as List).cast<String>(),
    );
  }
}

