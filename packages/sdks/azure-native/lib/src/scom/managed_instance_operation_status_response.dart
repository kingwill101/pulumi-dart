// ignore_for_file: unused_element, unnecessary_cast


/// Gets status of current and latest SCOM managed instance operation.
class ManagedInstanceOperationStatusResponse {
  /// Operation id
  final String id;
  /// Operation Name
  final String operationName;
  /// Operation status
  final String operationState;

  /// Creates a new [ManagedInstanceOperationStatusResponse].
  /// [id] Operation id
  /// [operationName] Operation Name
  /// [operationState] Operation status
  ManagedInstanceOperationStatusResponse({
    required this.id,
    required this.operationName,
    required this.operationState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'operationName': operationName,
      'operationState': operationState,
    };
  }

  factory ManagedInstanceOperationStatusResponse.fromMap(Map<String, dynamic> map) {
    return ManagedInstanceOperationStatusResponse(
      id: map['id'] as String,
      operationName: map['operationName'] as String,
      operationState: map['operationState'] as String,
    );
  }
}

