// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmEventbusStatsDimensionsResponse {
  final pulumi.Input<String> clientId;
  /// Whether to include or exclude the enums matching the regex.
  final pulumi.Input<String> enumFilterType;
  final pulumi.Input<String> errorEnumString;
  final pulumi.Input<String> retryAttempt;
  final pulumi.Input<String> taskName;
  final pulumi.Input<String> taskNumber;
  /// Stats have been or will be aggregated on set fields for any semantically-meaningful combination.
  final pulumi.Input<String> triggerId;
  final pulumi.Input<String> warningEnumString;
  final pulumi.Input<String> workflowId;
  final pulumi.Input<String> workflowName;

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
      clientId: (map['clientId'] as String).input(),
      enumFilterType: (map['enumFilterType'] as String).input(),
      errorEnumString: (map['errorEnumString'] as String).input(),
      retryAttempt: (map['retryAttempt'] as String).input(),
      taskName: (map['taskName'] as String).input(),
      taskNumber: (map['taskNumber'] as String).input(),
      triggerId: (map['triggerId'] as String).input(),
      warningEnumString: (map['warningEnumString'] as String).input(),
      workflowId: (map['workflowId'] as String).input(),
      workflowName: (map['workflowName'] as String).input(),
    );
  }
}

