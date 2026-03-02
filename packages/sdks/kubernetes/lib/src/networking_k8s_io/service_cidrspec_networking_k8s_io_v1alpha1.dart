// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ServiceCIDRSpec define the CIDRs the user wants to use for allocating ClusterIPs for Services.
class ServiceCIDRSpecNetworkingK8sIoV1alpha1 {
  /// CIDRs defines the IP blocks in CIDR notation (e.g. "192.168.0.0/24" or "2001:db8::/64") from which to assign service cluster IPs. Max of two CIDRs is allowed, one of each IP family. This field is immutable.
  final pulumi.Input<List<String>>? cidrs;

  /// Creates a new [ServiceCIDRSpecNetworkingK8sIoV1alpha1].
  /// [cidrs] CIDRs defines the IP blocks in CIDR notation (e.g. "192.168.0.0/24" or "2001:db8::/64") from which to assign service cluster IPs. Max of two CIDRs is allowed, one of each IP family. This field is immutable.
  ServiceCIDRSpecNetworkingK8sIoV1alpha1({
    this.cidrs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrs': ?cidrs,
    };
  }

  factory ServiceCIDRSpecNetworkingK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return ServiceCIDRSpecNetworkingK8sIoV1alpha1(
      cidrs: map['cidrs'] == null ? null : ((map['cidrs']! as List).cast<String>()).input(),
    );
  }
}

