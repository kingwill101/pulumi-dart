// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterIpAllocationPolicyAdditionalIpRangesConfig {
  /// List of secondary ranges names within this subnetwork that can be used for pod IPs.
  final pulumi.Input<List<String>>? podIpv4RangeNames;
  /// Name of the subnetwork. This can be the full path of the subnetwork or just the name.
  final pulumi.Input<String> subnetwork;

  /// Creates a new [ClusterIpAllocationPolicyAdditionalIpRangesConfig].
  /// [podIpv4RangeNames] List of secondary ranges names within this subnetwork that can be used for pod IPs.
  /// [subnetwork] Name of the subnetwork. This can be the full path of the subnetwork or just the name.
  const ClusterIpAllocationPolicyAdditionalIpRangesConfig({
    this.podIpv4RangeNames,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podIpv4RangeNames': ?podIpv4RangeNames,
      'subnetwork': subnetwork,
    };
  }

  factory ClusterIpAllocationPolicyAdditionalIpRangesConfig.fromMap(Map<String, dynamic> map) {
    return ClusterIpAllocationPolicyAdditionalIpRangesConfig(
      podIpv4RangeNames: (() { final guardedValue = map['podIpv4RangeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
    );
  }
}

