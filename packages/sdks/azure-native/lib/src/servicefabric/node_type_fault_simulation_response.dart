// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Node type fault simulation object with status.
class NodeTypeFaultSimulationResponse {
  /// Node type name.
  final pulumi.Input<String>? nodeTypeName;
  /// Current or latest asynchronous operation identifier on the node type.
  final pulumi.Input<String>? operationId;
  /// Current or latest asynchronous operation status on the node type
  final pulumi.Input<String> operationStatus;
  /// Fault simulation status
  final pulumi.Input<String>? status;

  /// Creates a new [NodeTypeFaultSimulationResponse].
  /// [nodeTypeName] Node type name.
  /// [operationId] Current or latest asynchronous operation identifier on the node type.
  /// [operationStatus] Current or latest asynchronous operation status on the node type
  /// [status] Fault simulation status
  const NodeTypeFaultSimulationResponse({
    this.nodeTypeName,
    this.operationId,
    required this.operationStatus,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeTypeName': ?nodeTypeName,
      'operationId': ?operationId,
      'operationStatus': operationStatus,
      'status': ?status,
    };
  }

  factory NodeTypeFaultSimulationResponse.fromMap(Map<String, dynamic> map) {
    return NodeTypeFaultSimulationResponse(
      nodeTypeName: (() { final guardedValue = map['nodeTypeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationId: (() { final guardedValue = map['operationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationStatus: pulumi.Input.fromValue(map['operationStatus'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
