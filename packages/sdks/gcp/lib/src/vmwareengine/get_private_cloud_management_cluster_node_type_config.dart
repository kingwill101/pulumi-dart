// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPrivateCloudManagementClusterNodeTypeConfig {
  /// Customized number of cores available to each node of the type.
  /// This number must always be one of 'nodeType.availableCustomCoreCounts'.
  /// If zero is provided max value from 'nodeType.availableCustomCoreCounts' will be used.
  /// This cannot be changed once the PrivateCloud is created.
  final pulumi.Input<int> customCoreCount;

  /// The number of nodes of this type in the cluster.
  final pulumi.Input<int> nodeCount;
  final pulumi.Input<String> nodeTypeId;

  /// Creates a new [GetPrivateCloudManagementClusterNodeTypeConfig].
  /// [customCoreCount] Customized number of cores available to each node of the type.
  /// [nodeCount] The number of nodes of this type in the cluster.
  /// [nodeTypeId] Required.
  GetPrivateCloudManagementClusterNodeTypeConfig({
    required this.customCoreCount,
    required this.nodeCount,
    required this.nodeTypeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customCoreCount': customCoreCount,
      'nodeCount': nodeCount,
      'nodeTypeId': nodeTypeId,
    };
  }

  factory GetPrivateCloudManagementClusterNodeTypeConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetPrivateCloudManagementClusterNodeTypeConfig(
      customCoreCount: pulumi.Input.fromValue(map['customCoreCount'] as int),
      nodeCount: pulumi.Input.fromValue(map['nodeCount'] as int),
      nodeTypeId: pulumi.Input.fromValue(map['nodeTypeId'] as String),
    );
  }
}
