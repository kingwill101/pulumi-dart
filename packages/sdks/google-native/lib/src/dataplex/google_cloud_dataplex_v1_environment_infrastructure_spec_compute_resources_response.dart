// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Compute resources associated with the analyze interactive workloads.
class GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResourcesResponse {
  /// Optional. Size in GB of the disk. Default is 100 GB.
  final pulumi.Input<int> diskSizeGb;
  /// Optional. Max configurable nodes. If max_node_count &gt; node_count, then auto-scaling is enabled.
  final pulumi.Input<int> maxNodeCount;
  /// Optional. Total number of nodes in the sessions created for this environment.
  final pulumi.Input<int> nodeCount;

  /// Creates a new [GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResourcesResponse].
  /// [diskSizeGb] Optional. Size in GB of the disk. Default is 100 GB.
  /// [maxNodeCount] Optional. Max configurable nodes. If max_node_count &gt; node_count, then auto-scaling is enabled.
  /// [nodeCount] Optional. Total number of nodes in the sessions created for this environment.
  const GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResourcesResponse({
    required this.diskSizeGb,
    required this.maxNodeCount,
    required this.nodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGb': diskSizeGb,
      'maxNodeCount': maxNodeCount,
      'nodeCount': nodeCount,
    };
  }

  factory GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResourcesResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResourcesResponse(
      diskSizeGb: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['diskSizeGb'])),
      maxNodeCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxNodeCount'])),
      nodeCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['nodeCount'])),
    );
  }
}
