// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_nodes_db_node.dart';

/// Result data returned by getDbNodes.
class GetDbNodesResult {
  final String? cloudVmClusterId;
  /// A `dbNodes` block as defined below.
  final List<GetDbNodesDbNode>? dbNodes;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;

  /// Creates a new [GetDbNodesResult].
  /// [cloudVmClusterId] Optional.
  /// [dbNodes] A `dbNodes` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  const GetDbNodesResult({
    this.cloudVmClusterId,
    this.dbNodes,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudVmClusterId': ?cloudVmClusterId,
      'dbNodes': ?(() { final guardedValue = dbNodes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDbNodesDbNode, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
    };
  }

  factory GetDbNodesResult.fromMap(Map<String, dynamic> map) {
    return GetDbNodesResult(
      cloudVmClusterId: (() { final guardedValue = map['cloudVmClusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbNodes: (() { final guardedValue = map['dbNodes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDbNodesDbNode>(guardedValue, (value) => GetDbNodesDbNode.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
