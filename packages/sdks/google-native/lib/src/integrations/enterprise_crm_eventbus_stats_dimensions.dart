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
  const EnterpriseCrmEventbusStatsDimensions({
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
      'enumFilterType': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusStatsDimensionsEnumFilterType, String>(enumFilterType, (value) => value.wireValue),
      'errorEnumString': ?errorEnumString,
      'retryAttempt': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusStatsDimensionsRetryAttempt, String>(retryAttempt, (value) => value.wireValue),
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
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enumFilterType: (() { final guardedValue = map['enumFilterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusStatsDimensionsEnumFilterType.fromValue(guardedValue as String)); })(),
      errorEnumString: (() { final guardedValue = map['errorEnumString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retryAttempt: (() { final guardedValue = map['retryAttempt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusStatsDimensionsRetryAttempt.fromValue(guardedValue as String)); })(),
      taskName: (() { final guardedValue = map['taskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskNumber: (() { final guardedValue = map['taskNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerId: (() { final guardedValue = map['triggerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      warningEnumString: (() { final guardedValue = map['warningEnumString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workflowId: (() { final guardedValue = map['workflowId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workflowName: (() { final guardedValue = map['workflowName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

