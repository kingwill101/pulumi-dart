// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BareMetalParallelUpgradeConfig defines the parallel upgrade settings for worker node pools.
class BareMetalParallelUpgradeConfigResponse {
  /// The maximum number of nodes that can be upgraded at once.
  final pulumi.Input<int> concurrentNodes;
  /// The minimum number of nodes that should be healthy and available during an upgrade. If set to the default value of 0, it is possible that none of the nodes will be available during an upgrade.
  final pulumi.Input<int> minimumAvailableNodes;

  /// Creates a new [BareMetalParallelUpgradeConfigResponse].
  /// [concurrentNodes] The maximum number of nodes that can be upgraded at once.
  /// [minimumAvailableNodes] The minimum number of nodes that should be healthy and available during an upgrade. If set to the default value of 0, it is possible that none of the nodes will be available during an upgrade.
  const BareMetalParallelUpgradeConfigResponse({
    required this.concurrentNodes,
    required this.minimumAvailableNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'concurrentNodes': concurrentNodes,
      'minimumAvailableNodes': minimumAvailableNodes,
    };
  }

  factory BareMetalParallelUpgradeConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalParallelUpgradeConfigResponse(
      concurrentNodes: pulumi.Input.fromValue(map['concurrentNodes'] as int),
      minimumAvailableNodes: pulumi.Input.fromValue(map['minimumAvailableNodes'] as int),
    );
  }
}

