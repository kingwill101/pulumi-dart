// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterIpAllocationPolicyAdditionalIpRangesConfig {
  /// List of secondary ranges names within this subnetwork that can be used for pod IPs.
  final pulumi.Input<List<String>>? podIpv4RangeNames;
  /// Status of the subnetwork. Additional subnet with DRAINING status will not be selected during new node pool creation
  /// Accepted values are:
  /// * `ACTIVE`: ACTIVE status indicates that the subnet is available for new node pool creation.
  /// * `DRAINING`: DRAINING status indicates that the subnet is not used for new node pool creation.
  final pulumi.Input<String>? status;
  /// Name of the subnetwork. This can be the full path of the subnetwork or just the name.
  final pulumi.Input<String> subnetwork;

  /// Creates a new [ClusterIpAllocationPolicyAdditionalIpRangesConfig].
  /// [podIpv4RangeNames] List of secondary ranges names within this subnetwork that can be used for pod IPs.
  /// [status] Status of the subnetwork. Additional subnet with DRAINING status will not be selected during new node pool creation
  /// [subnetwork] Name of the subnetwork. This can be the full path of the subnetwork or just the name.
  const ClusterIpAllocationPolicyAdditionalIpRangesConfig({
    this.podIpv4RangeNames,
    this.status,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podIpv4RangeNames': ?podIpv4RangeNames,
      'status': ?status,
      'subnetwork': subnetwork,
    };
  }

  factory ClusterIpAllocationPolicyAdditionalIpRangesConfig.fromMap(Map<String, dynamic> map) {
    return ClusterIpAllocationPolicyAdditionalIpRangesConfig(
      podIpv4RangeNames: (() { final guardedValue = map['podIpv4RangeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
    );
  }
}
