// ignore_for_file: unused_element, unnecessary_cast


/// Properties of managed integration runtime operation result.
class ManagedIntegrationRuntimeOperationResultResponse {
  /// The activity id for the operation request.
  final String activityId;
  /// The error code.
  final String errorCode;
  /// Managed integration runtime error parameters.
  final List<String> parameters;
  /// The operation result.
  final String result;
  /// The start time of the operation.
  final String startTime;
  /// The operation type. Could be start or stop.
  final String type;

  /// Creates a new [ManagedIntegrationRuntimeOperationResultResponse].
  /// [activityId] The activity id for the operation request.
  /// [errorCode] The error code.
  /// [parameters] Managed integration runtime error parameters.
  /// [result] The operation result.
  /// [startTime] The start time of the operation.
  /// [type] The operation type. Could be start or stop.
  ManagedIntegrationRuntimeOperationResultResponse({
    required this.activityId,
    required this.errorCode,
    required this.parameters,
    required this.result,
    required this.startTime,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activityId': activityId,
      'errorCode': errorCode,
      'parameters': parameters,
      'result': result,
      'startTime': startTime,
      'type': type,
    };
  }

  factory ManagedIntegrationRuntimeOperationResultResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIntegrationRuntimeOperationResultResponse(
      activityId: map['activityId'] as String,
      errorCode: map['errorCode'] as String,
      parameters: (map['parameters'] as List).cast<String>(),
      result: map['result'] as String,
      startTime: map['startTime'] as String,
      type: map['type'] as String,
    );
  }
}

