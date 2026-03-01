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
  SqlPoolWorkloadGroupState({
    pulumi.Output<String>? importance,
    pulumi.Output<int>? maxResourcePercent,
    pulumi.Output<double>? maxResourcePercentPerRequest,
    pulumi.Output<int>? minResourcePercent,
    pulumi.Output<double>? minResourcePercentPerRequest,
    pulumi.Output<String>? name,
    pulumi.Output<int>? queryExecutionTimeoutInSeconds,
    pulumi.Output<String>? sqlPoolId,
  }) :
      importance = pulumi.Input.asOptionalInput<String>(importance),
      maxResourcePercent = pulumi.Input.asOptionalInput<int>(maxResourcePercent),
      maxResourcePercentPerRequest = pulumi.Input.asOptionalInput<double>(maxResourcePercentPerRequest),
      minResourcePercent = pulumi.Input.asOptionalInput<int>(minResourcePercent),
      minResourcePercentPerRequest = pulumi.Input.asOptionalInput<double>(minResourcePercentPerRequest),
      name = pulumi.Input.asOptionalInput<String>(name),
      queryExecutionTimeoutInSeconds = pulumi.Input.asOptionalInput<int>(queryExecutionTimeoutInSeconds),
      sqlPoolId = pulumi.Input.asOptionalInput<String>(sqlPoolId);

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
      importance: map['importance'] == null ? null : pulumi.Output.create<String>(map['importance'] as String),
      maxResourcePercent: map['maxResourcePercent'] == null ? null : pulumi.Output.create<int>(map['maxResourcePercent'] as int),
      maxResourcePercentPerRequest: map['maxResourcePercentPerRequest'] == null ? null : pulumi.Output.create<double>(map['maxResourcePercentPerRequest'] as double),
      minResourcePercent: map['minResourcePercent'] == null ? null : pulumi.Output.create<int>(map['minResourcePercent'] as int),
      minResourcePercentPerRequest: map['minResourcePercentPerRequest'] == null ? null : pulumi.Output.create<double>(map['minResourcePercentPerRequest'] as double),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      queryExecutionTimeoutInSeconds: map['queryExecutionTimeoutInSeconds'] == null ? null : pulumi.Output.create<int>(map['queryExecutionTimeoutInSeconds'] as int),
      sqlPoolId: map['sqlPoolId'] == null ? null : pulumi.Output.create<String>(map['sqlPoolId'] as String),
    );
  }
}

