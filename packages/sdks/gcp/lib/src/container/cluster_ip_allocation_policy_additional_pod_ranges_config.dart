// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterIpAllocationPolicyAdditionalPodRangesConfig {
  /// The names of the Pod ranges to add to the cluster.
  final pulumi.Input<List<String>> podRangeNames;

  /// Creates a new [ClusterIpAllocationPolicyAdditionalPodRangesConfig].
  /// [podRangeNames] The names of the Pod ranges to add to the cluster.
  const ClusterIpAllocationPolicyAdditionalPodRangesConfig({
    required this.podRangeNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podRangeNames': podRangeNames,
    };
  }

  factory ClusterIpAllocationPolicyAdditionalPodRangesConfig.fromMap(Map<String, dynamic> map) {
    return ClusterIpAllocationPolicyAdditionalPodRangesConfig(
      podRangeNames: pulumi.Input.fromValue((map['podRangeNames'] as List).cast<String>()),
    );
  }
}

