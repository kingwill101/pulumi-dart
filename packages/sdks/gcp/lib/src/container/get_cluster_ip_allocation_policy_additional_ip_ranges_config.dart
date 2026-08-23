// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterIpAllocationPolicyAdditionalIpRangesConfig {
  /// List of secondary ranges names within this subnetwork that can be used for pod IPs.
  final pulumi.Input<List<String>> podIpv4RangeNames;
  /// Status of the subnetwork, If in draining status, subnet will not be selected for new node pools.
  final pulumi.Input<String> status;
  /// Name of the subnetwork. This can be the full path of the subnetwork or just the name.
  final pulumi.Input<String> subnetwork;

  /// Creates a new [GetClusterIpAllocationPolicyAdditionalIpRangesConfig].
  /// [podIpv4RangeNames] List of secondary ranges names within this subnetwork that can be used for pod IPs.
  /// [status] Status of the subnetwork, If in draining status, subnet will not be selected for new node pools.
  /// [subnetwork] Name of the subnetwork. This can be the full path of the subnetwork or just the name.
  const GetClusterIpAllocationPolicyAdditionalIpRangesConfig({
    required this.podIpv4RangeNames,
    required this.status,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podIpv4RangeNames': podIpv4RangeNames,
      'status': status,
      'subnetwork': subnetwork,
    };
  }

  factory GetClusterIpAllocationPolicyAdditionalIpRangesConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterIpAllocationPolicyAdditionalIpRangesConfig(
      podIpv4RangeNames: pulumi.Input.fromValue((map['podIpv4RangeNames'] as List).cast<String>()),
      status: pulumi.Input.fromValue(map['status'] as String),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
    );
  }
}
