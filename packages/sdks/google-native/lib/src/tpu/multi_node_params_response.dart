// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters to specify for multi-node QueuedResource requests. This field must be populated in case of multi-node requests instead of node_id. It's an error to specify both node_id and multi_node_params.
class MultiNodeParamsResponse {
  /// Number of nodes with this spec. The system will attempt to provison "node_count" nodes as part of the request. This needs to be &gt; 1.
  final pulumi.Input<int> nodeCount;

  /// Prefix of node_ids in case of multi-node request Should follow the `^[A-Za-z0-9_.~+%-]+$` regex format. If node_count = 3 and node_id_prefix = "np", node ids of nodes created will be "np-0", "np-1", "np-2". If this field is not provided we use queued_resource_id as the node_id_prefix.
  final pulumi.Input<String> nodeIdPrefix;

  /// Creates a new [MultiNodeParamsResponse].
  /// [nodeCount] Number of nodes with this spec. The system will attempt to provison "node_count" nodes as part of the request. This needs to be &gt; 1.
  /// [nodeIdPrefix] Prefix of node_ids in case of multi-node request Should follow the `^[A-Za-z0-9_.~+%-]+$` regex format. If node_count = 3 and node_id_prefix = "np", node ids of nodes created will be "np-0", "np-1", "np-2". If this field is not provided we use queued_resource_id as the node_id_prefix.
  MultiNodeParamsResponse({
    required this.nodeCount,
    required this.nodeIdPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeCount': nodeCount,
      'nodeIdPrefix': nodeIdPrefix,
    };
  }

  factory MultiNodeParamsResponse.fromMap(Map<String, dynamic> map) {
    return MultiNodeParamsResponse(
      nodeCount: pulumi.Input.fromValue(map['nodeCount'] as int),
      nodeIdPrefix: pulumi.Input.fromValue(map['nodeIdPrefix'] as String),
    );
  }
}
