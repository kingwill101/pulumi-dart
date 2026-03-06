// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the workload node configurations.
class BareMetalWorkloadNodeConfigResponse {
  /// Specifies which container runtime will be used.
  final pulumi.Input<String> containerRuntime;
  /// The maximum number of pods a node can run. The size of the CIDR range assigned to the node will be derived from this parameter.
  final pulumi.Input<String> maxPodsPerNode;

  /// Creates a new [BareMetalWorkloadNodeConfigResponse].
  /// [containerRuntime] Specifies which container runtime will be used.
  /// [maxPodsPerNode] The maximum number of pods a node can run. The size of the CIDR range assigned to the node will be derived from this parameter.
  const BareMetalWorkloadNodeConfigResponse({
    required this.containerRuntime,
    required this.maxPodsPerNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRuntime': containerRuntime,
      'maxPodsPerNode': maxPodsPerNode,
    };
  }

  factory BareMetalWorkloadNodeConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalWorkloadNodeConfigResponse(
      containerRuntime: pulumi.Input.fromValue(map['containerRuntime'] as String),
      maxPodsPerNode: pulumi.Input.fromValue(map['maxPodsPerNode'] as String),
    );
  }
}

