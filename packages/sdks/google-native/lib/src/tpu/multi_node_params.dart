// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters to specify for multi-node QueuedResource requests. This field must be populated in case of multi-node requests instead of node_id. It's an error to specify both node_id and multi_node_params.
class MultiNodeParams {
  /// Number of nodes with this spec. The system will attempt to provison "node_count" nodes as part of the request. This needs to be &gt; 1.
  final pulumi.Input<int> nodeCount;

  /// Prefix of node_ids in case of multi-node request Should follow the `^[A-Za-z0-9_.~+%-]+$` regex format. If node_count = 3 and node_id_prefix = "np", node ids of nodes created will be "np-0", "np-1", "np-2". If this field is not provided we use queued_resource_id as the node_id_prefix.
  final pulumi.Input<String>? nodeIdPrefix;

  /// Creates a new [MultiNodeParams].
  /// [nodeCount] Number of nodes with this spec. The system will attempt to provison "node_count" nodes as part of the request. This needs to be &gt; 1.
  /// [nodeIdPrefix] Prefix of node_ids in case of multi-node request Should follow the `^[A-Za-z0-9_.~+%-]+$` regex format. If node_count = 3 and node_id_prefix = "np", node ids of nodes created will be "np-0", "np-1", "np-2". If this field is not provided we use queued_resource_id as the node_id_prefix.
  MultiNodeParams({required this.nodeCount, this.nodeIdPrefix});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeCount': nodeCount,
      'nodeIdPrefix': ?nodeIdPrefix,
    };
  }

  factory MultiNodeParams.fromMap(Map<String, dynamic> map) {
    return MultiNodeParams(
      nodeCount: pulumi.Input.fromValue(map['nodeCount'] as int),
      nodeIdPrefix: (() {
        final guardedValue = map['nodeIdPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
