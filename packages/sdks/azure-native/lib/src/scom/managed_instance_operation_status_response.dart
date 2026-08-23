// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets status of current and latest SCOM managed instance operation.
class ManagedInstanceOperationStatusResponse {
  /// Operation id
  final pulumi.Input<String> id;
  /// Operation Name
  final pulumi.Input<String> operationName;
  /// Operation status
  final pulumi.Input<String> operationState;

  /// Creates a new [ManagedInstanceOperationStatusResponse].
  /// [id] Operation id
  /// [operationName] Operation Name
  /// [operationState] Operation status
  const ManagedInstanceOperationStatusResponse({
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
      id: pulumi.Input.fromValue(map['id'] as String),
      operationName: pulumi.Input.fromValue(map['operationName'] as String),
      operationState: pulumi.Input.fromValue(map['operationState'] as String),
    );
  }
}
