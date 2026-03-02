// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_stats_dimensions_enum_filter_type.dart';
import 'enterprise_crm_eventbus_stats_dimensions_retry_attempt.dart';

class EnterpriseCrmEventbusStatsDimensions {
  final pulumi.Input<String>? clientId;
  /// Whether to include or exclude the enums matching the regex.
  final pulumi.Input<EnterpriseCrmEventbusStatsDimensionsEnumFilterType>? enumFilterType;
  final pulumi.Input<String>? errorEnumString;
  final pulumi.Input<EnterpriseCrmEventbusStatsDimensionsRetryAttempt>? retryAttempt;
  final pulumi.Input<String>? taskName;
  final pulumi.Input<String>? taskNumber;
  /// Stats have been or will be aggregated on set fields for any semantically-meaningful combination.
  final pulumi.Input<String>? triggerId;
  final pulumi.Input<String>? warningEnumString;
  final pulumi.Input<String>? workflowId;
  final pulumi.Input<String>? workflowName;

  /// Creates a new [EnterpriseCrmEventbusStatsDimensions].
  /// [clientId] Optional.
  /// [enumFilterType] Whether to include or exclude the enums matching the regex.
  /// [errorEnumString] Optional.
  /// [retryAttempt] Optional.
  /// [taskName] Optional.
  /// [taskNumber] Optional.
  /// [triggerId] Stats have been or will be aggregated on set fields for any semantically-meaningful combination.
  /// [warningEnumString] Optional.
  /// [workflowId] Optional.
  /// [workflowName] Optional.
  EnterpriseCrmEventbusStatsDimensions({
    this.clientId,
    this.enumFilterType,
    this.errorEnumString,
    this.retryAttempt,
    this.taskName,
    this.taskNumber,
    this.triggerId,
    this.warningEnumString,
    this.workflowId,
    this.workflowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'enumFilterType': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusStatsDimensionsEnumFilterType, String>(enumFilterType, (value) => value.value),
      'errorEnumString': ?errorEnumString,
      'retryAttempt': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusStatsDimensionsRetryAttempt, String>(retryAttempt, (value) => value.value),
      'taskName': ?taskName,
      'taskNumber': ?taskNumber,
      'triggerId': ?triggerId,
      'warningEnumString': ?warningEnumString,
      'workflowId': ?workflowId,
      'workflowName': ?workflowName,
    };
  }

  factory EnterpriseCrmEventbusStatsDimensions.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusStatsDimensions(
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      enumFilterType: map['enumFilterType'] == null ? null : (EnterpriseCrmEventbusStatsDimensionsEnumFilterType.fromValue(map['enumFilterType'] as String)).input(),
      errorEnumString: map['errorEnumString'] == null ? null : (map['errorEnumString'] as String).input(),
      retryAttempt: map['retryAttempt'] == null ? null : (EnterpriseCrmEventbusStatsDimensionsRetryAttempt.fromValue(map['retryAttempt'] as String)).input(),
      taskName: map['taskName'] == null ? null : (map['taskName'] as String).input(),
      taskNumber: map['taskNumber'] == null ? null : (map['taskNumber'] as String).input(),
      triggerId: map['triggerId'] == null ? null : (map['triggerId'] as String).input(),
      warningEnumString: map['warningEnumString'] == null ? null : (map['warningEnumString'] as String).input(),
      workflowId: map['workflowId'] == null ? null : (map['workflowId'] as String).input(),
      workflowName: map['workflowName'] == null ? null : (map['workflowName'] as String).input(),
    );
  }
}

