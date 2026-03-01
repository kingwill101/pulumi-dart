// ignore_for_file: unused_element, unnecessary_cast


class EnterpriseCrmEventbusStatsDimensionsResponse {
  final String clientId;
  /// Whether to include or exclude the enums matching the regex.
  final String enumFilterType;
  final String errorEnumString;
  final String retryAttempt;
  final String taskName;
  final String taskNumber;
  /// Stats have been or will be aggregated on set fields for any semantically-meaningful combination.
  final String triggerId;
  final String warningEnumString;
  final String workflowId;
  final String workflowName;

  /// Creates a new [EnterpriseCrmEventbusStatsDimensionsResponse].
  /// [clientId] Required.
  /// [enumFilterType] Whether to include or exclude the enums matching the regex.
  /// [errorEnumString] Required.
  /// [retryAttempt] Required.
  /// [taskName] Required.
  /// [taskNumber] Required.
  /// [triggerId] Stats have been or will be aggregated on set fields for any semantically-meaningful combination.
  /// [warningEnumString] Required.
  /// [workflowId] Required.
  /// [workflowName] Required.
  EnterpriseCrmEventbusStatsDimensionsResponse({
    required this.clientId,
    required this.enumFilterType,
    required this.errorEnumString,
    required this.retryAttempt,
    required this.taskName,
    required this.taskNumber,
    required this.triggerId,
    required this.warningEnumString,
    required this.workflowId,
    required this.workflowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'enumFilterType': enumFilterType,
      'errorEnumString': errorEnumString,
      'retryAttempt': retryAttempt,
      'taskName': taskName,
      'taskNumber': taskNumber,
      'triggerId': triggerId,
      'warningEnumString': warningEnumString,
      'workflowId': workflowId,
      'workflowName': workflowName,
    };
  }

  factory EnterpriseCrmEventbusStatsDimensionsResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusStatsDimensionsResponse(
      clientId: map['clientId'] as String,
      enumFilterType: map['enumFilterType'] as String,
      errorEnumString: map['errorEnumString'] as String,
      retryAttempt: map['retryAttempt'] as String,
      taskName: map['taskName'] as String,
      taskNumber: map['taskNumber'] as String,
      triggerId: map['triggerId'] as String,
      warningEnumString: map['warningEnumString'] as String,
      workflowId: map['workflowId'] as String,
      workflowName: map['workflowName'] as String,
    );
  }
}

