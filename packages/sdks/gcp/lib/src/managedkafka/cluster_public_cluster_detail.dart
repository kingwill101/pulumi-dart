// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterPublicClusterDetail {
  /// (Output)
  /// DNS discovery records that resolve to all of the external IP addresses associated with the public cluster.
  final pulumi.Input<List<String>?>? discoveryDnsRecords;
  /// (Output)
  /// All of the external IP addresses associated with the public cluster used for configuring egress firewall rules to a public cluster.
  final pulumi.Input<List<String>?>? externalIpAddresses;

  /// Creates a new [ClusterPublicClusterDetail].
  /// [discoveryDnsRecords] (Output)
  /// [externalIpAddresses] (Output)
  const ClusterPublicClusterDetail({
    this.discoveryDnsRecords,
    this.externalIpAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoveryDnsRecords': ?discoveryDnsRecords,
      'externalIpAddresses': ?externalIpAddresses,
    };
  }

  factory ClusterPublicClusterDetail.fromMap(Map<String, dynamic> map) {
    return ClusterPublicClusterDetail(
      discoveryDnsRecords: (() { final guardedValue = map['discoveryDnsRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      externalIpAddresses: (() { final guardedValue = map['externalIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
