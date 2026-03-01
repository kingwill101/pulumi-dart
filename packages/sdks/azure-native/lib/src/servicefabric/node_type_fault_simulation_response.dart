// ignore_for_file: unused_element, unnecessary_cast


/// Node type fault simulation object with status.
class NodeTypeFaultSimulationResponse {
  /// Node type name.
  final String? nodeTypeName;
  /// Current or latest asynchronous operation identifier on the node type.
  final String? operationId;
  /// Current or latest asynchronous operation status on the node type
  final String operationStatus;
  /// Fault simulation status
  final String? status;

  /// Creates a new [NodeTypeFaultSimulationResponse].
  /// [nodeTypeName] Node type name.
  /// [operationId] Current or latest asynchronous operation identifier on the node type.
  /// [operationStatus] Current or latest asynchronous operation status on the node type
  /// [status] Fault simulation status
  NodeTypeFaultSimulationResponse({
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
      nodeTypeName: map['nodeTypeName'] == null ? null : map['nodeTypeName'] as String,
      operationId: map['operationId'] == null ? null : map['operationId'] as String,
      operationStatus: map['operationStatus'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

