// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_nodes_db_node.dart';

/// Result data returned by getDbNodes.
class GetDbNodesResult {
  final String cloudVmClusterId;

  /// A `db_nodes` block as defined below.
  final List<GetDbNodesDbNode> dbNodes;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Creates a new [GetDbNodesResult].
  /// [cloudVmClusterId] Required.
  /// [dbNodes] A `db_nodes` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  GetDbNodesResult({
    required this.cloudVmClusterId,
    required this.dbNodes,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudVmClusterId': cloudVmClusterId,
      'dbNodes':
          pulumi.Input.encodeList<GetDbNodesDbNode, Map<String, dynamic>>(
            dbNodes,
            (value) => value.toMap(),
          ),
      'id': id,
    };
  }

  factory GetDbNodesResult.fromMap(Map<String, dynamic> map) {
    return GetDbNodesResult(
      cloudVmClusterId: map['cloudVmClusterId'] as String,
      dbNodes: pulumi.Input.decodeList<GetDbNodesDbNode>(
        map['dbNodes']!,
        (value) =>
            GetDbNodesDbNode.fromMap((value as Map).cast<String, dynamic>()),
      ),
      id: map['id'] as String,
    );
  }
}
