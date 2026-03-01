// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_sql_pool_workload_classifier_args_doc}
/// The set of arguments for SqlPoolWorkloadClassifier.
/// {@endtemplate}
/// {@macro pulumi_synapse_sql_pool_workload_classifier_args_doc}
class SqlPoolWorkloadClassifierArgs {
  /// The workload classifier context.
  final pulumi.Input<String>? context;
  /// The workload classifier end time for classification.
  final pulumi.Input<String>? endTime;
  /// The workload classifier importance.
  final pulumi.Input<String>? importance;
  /// The workload classifier label.
  final pulumi.Input<String>? label;
  /// The workload classifier member name.
  final pulumi.Input<String> memberName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// SQL pool name
  final pulumi.Input<String> sqlPoolName;
  /// The workload classifier start time for classification.
  final pulumi.Input<String>? startTime;
  /// The name of the workload classifier.
  final pulumi.Input<String>? workloadClassifierName;
  /// The name of the workload group.
  final pulumi.Input<String> workloadGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [SqlPoolWorkloadClassifierArgs].
  /// [context] The workload classifier context.
  /// [endTime] The workload classifier end time for classification.
  /// [importance] The workload classifier importance.
  /// [label] The workload classifier label.
  /// [memberName] The workload classifier member name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sqlPoolName] SQL pool name
  /// [startTime] The workload classifier start time for classification.
  /// [workloadClassifierName] The name of the workload classifier.
  /// [workloadGroupName] The name of the workload group.
  /// [workspaceName] The name of the workspace.
  SqlPoolWorkloadClassifierArgs({
    pulumi.Output<String>? context,
    pulumi.Output<String>? endTime,
    pulumi.Output<String>? importance,
    pulumi.Output<String>? label,
    required pulumi.Output<String> memberName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sqlPoolName,
    pulumi.Output<String>? startTime,
    pulumi.Output<String>? workloadClassifierName,
    required pulumi.Output<String> workloadGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      context = pulumi.Input.asOptionalInput<String>(context),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      importance = pulumi.Input.asOptionalInput<String>(importance),
      label = pulumi.Input.asOptionalInput<String>(label),
      memberName = pulumi.Input.asInput<String>(memberName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlPoolName = pulumi.Input.asInput<String>(sqlPoolName),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      workloadClassifierName = pulumi.Input.asOptionalInput<String>(workloadClassifierName),
      workloadGroupName = pulumi.Input.asInput<String>(workloadGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': ?context,
      'endTime': ?endTime,
      'importance': ?importance,
      'label': ?label,
      'memberName': memberName,
      'resourceGroupName': resourceGroupName,
      'sqlPoolName': sqlPoolName,
      'startTime': ?startTime,
      'workloadClassifierName': ?workloadClassifierName,
      'workloadGroupName': workloadGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory SqlPoolWorkloadClassifierArgs.fromMap(Map<String, dynamic> map) {
    return SqlPoolWorkloadClassifierArgs(
      context: map['context'] == null ? null : pulumi.Output.create<String>(map['context'] as String),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      importance: map['importance'] == null ? null : pulumi.Output.create<String>(map['importance'] as String),
      label: map['label'] == null ? null : pulumi.Output.create<String>(map['label'] as String),
      memberName: pulumi.Output.create<String>(map['memberName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sqlPoolName: pulumi.Output.create<String>(map['sqlPoolName'] as String),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
      workloadClassifierName: map['workloadClassifierName'] == null ? null : pulumi.Output.create<String>(map['workloadClassifierName'] as String),
      workloadGroupName: pulumi.Output.create<String>(map['workloadGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

