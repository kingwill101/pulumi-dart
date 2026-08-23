// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SqlPoolWorkloadGroup resources.
class SqlPoolWorkloadGroupState {
  /// The workload group importance level. Defaults to `normal`.
  final pulumi.Input<String>? importance;
  /// The workload group cap percentage resource.
  final pulumi.Input<int>? maxResourcePercent;
  /// The workload group request maximum grant percentage. Defaults to `3`.
  final pulumi.Input<double>? maxResourcePercentPerRequest;
  /// The workload group minimum percentage resource.
  final pulumi.Input<int>? minResourcePercent;
  /// The workload group request minimum grant percentage.
  final pulumi.Input<double>? minResourcePercentPerRequest;
  /// The name which should be used for this Synapse SQL Pool Workload Group. Changing this forces a new Synapse SQL Pool Workload Group to be created.
  final pulumi.Input<String>? name;
  /// The workload group query execution timeout.
  final pulumi.Input<int>? queryExecutionTimeoutInSeconds;
  /// The ID of the Synapse SQL Pool. Changing this forces a new Synapse SQL Pool Workload Group to be created.
  final pulumi.Input<String>? sqlPoolId;

  /// Creates a new [SqlPoolWorkloadGroupState].
  /// [importance] The workload group importance level. Defaults to `normal`.
  /// [maxResourcePercent] The workload group cap percentage resource.
  /// [maxResourcePercentPerRequest] The workload group request maximum grant percentage. Defaults to `3`.
  /// [minResourcePercent] The workload group minimum percentage resource.
  /// [minResourcePercentPerRequest] The workload group request minimum grant percentage.
  /// [name] The name which should be used for this Synapse SQL Pool Workload Group. Changing this forces a new Synapse SQL Pool Workload Group to be created.
  /// [queryExecutionTimeoutInSeconds] The workload group query execution timeout.
  /// [sqlPoolId] The ID of the Synapse SQL Pool. Changing this forces a new Synapse SQL Pool Workload Group to be created.
  const SqlPoolWorkloadGroupState({
    this.importance,
    this.maxResourcePercent,
    this.maxResourcePercentPerRequest,
    this.minResourcePercent,
    this.minResourcePercentPerRequest,
    this.name,
    this.queryExecutionTimeoutInSeconds,
    this.sqlPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'importance': ?importance,
      'maxResourcePercent': ?maxResourcePercent,
      'maxResourcePercentPerRequest': ?maxResourcePercentPerRequest,
      'minResourcePercent': ?minResourcePercent,
      'minResourcePercentPerRequest': ?minResourcePercentPerRequest,
      'name': ?name,
      'queryExecutionTimeoutInSeconds': ?queryExecutionTimeoutInSeconds,
      'sqlPoolId': ?sqlPoolId,
    };
  }

  factory SqlPoolWorkloadGroupState.fromMap(Map<String, dynamic> map) {
    return SqlPoolWorkloadGroupState(
      importance: (() { final guardedValue = map['importance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxResourcePercent: (() { final guardedValue = map['maxResourcePercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxResourcePercentPerRequest: (() { final guardedValue = map['maxResourcePercentPerRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      minResourcePercent: (() { final guardedValue = map['minResourcePercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minResourcePercentPerRequest: (() { final guardedValue = map['minResourcePercentPerRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryExecutionTimeoutInSeconds: (() { final guardedValue = map['queryExecutionTimeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sqlPoolId: (() { final guardedValue = map['sqlPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
