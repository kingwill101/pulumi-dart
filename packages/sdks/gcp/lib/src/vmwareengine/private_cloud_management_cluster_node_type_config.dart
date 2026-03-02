// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PrivateCloudManagementClusterNodeTypeConfig {
  /// Customized number of cores available to each node of the type.
  /// This number must always be one of `nodeType.availableCustomCoreCounts`.
  /// If zero is provided max value from `nodeType.availableCustomCoreCounts` will be used.
  /// This cannot be changed once the PrivateCloud is created.
  final pulumi.Input<int>? customCoreCount;
  /// The number of nodes of this type in the cluster.
  final pulumi.Input<int> nodeCount;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> nodeTypeId;

  /// Creates a new [PrivateCloudManagementClusterNodeTypeConfig].
  /// [customCoreCount] Customized number of cores available to each node of the type.
  /// [nodeCount] The number of nodes of this type in the cluster.
  /// [nodeTypeId] The identifier for this object. Format specified above.
  PrivateCloudManagementClusterNodeTypeConfig({
    this.customCoreCount,
    required this.nodeCount,
    required this.nodeTypeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customCoreCount': ?customCoreCount,
      'nodeCount': nodeCount,
      'nodeTypeId': nodeTypeId,
    };
  }

  factory PrivateCloudManagementClusterNodeTypeConfig.fromMap(Map<String, dynamic> map) {
    return PrivateCloudManagementClusterNodeTypeConfig(
      customCoreCount: map['customCoreCount'] == null ? null : (map['customCoreCount'] as int).input(),
      nodeCount: (map['nodeCount'] as int).input(),
      nodeTypeId: (map['nodeTypeId'] as String).input(),
    );
  }
}

