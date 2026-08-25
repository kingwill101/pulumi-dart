// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_nodes_db_node.dart';

/// Result data returned by getDbNodes.
class GetDbNodesResult {
  final String? cloudVmCluster;
  final List<GetDbNodesDbNode>? dbNodes;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? project;

  /// Creates a new [GetDbNodesResult].
  /// [cloudVmCluster] Optional.
  /// [dbNodes] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [project] Optional.
  const GetDbNodesResult({
    this.cloudVmCluster,
    this.dbNodes,
    this.id,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudVmCluster': ?cloudVmCluster,
      'dbNodes': ?(() { final guardedValue = dbNodes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDbNodesDbNode, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetDbNodesResult.fromMap(Map<String, dynamic> map) {
    return GetDbNodesResult(
      cloudVmCluster: (() { final guardedValue = map['cloudVmCluster']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbNodes: (() { final guardedValue = map['dbNodes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDbNodesDbNode>(guardedValue, (value) => GetDbNodesDbNode.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
