// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_workload_classifier_args_doc}
/// The set of arguments for WorkloadClassifier.
/// {@endtemplate}
/// {@macro pulumi_sql_workload_classifier_args_doc}
class WorkloadClassifierArgs {
  /// The workload classifier context.
  final pulumi.Input<String>? context;
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The workload classifier end time for classification.
  final pulumi.Input<String>? endTime;
  /// The workload classifier importance.
  final pulumi.Input<String>? importance;
  /// The workload classifier label.
  final pulumi.Input<String>? label;
  /// The workload classifier member name.
  final pulumi.Input<String> memberName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The workload classifier start time for classification.
  final pulumi.Input<String>? startTime;
  /// The name of the workload classifier to create/update.
  final pulumi.Input<String>? workloadClassifierName;
  /// The name of the workload group from which to receive the classifier from.
  final pulumi.Input<String> workloadGroupName;

  /// Creates a new [WorkloadClassifierArgs].
  /// [context] The workload classifier context.
  /// [databaseName] The name of the database.
  /// [endTime] The workload classifier end time for classification.
  /// [importance] The workload classifier importance.
  /// [label] The workload classifier label.
  /// [memberName] The workload classifier member name.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [startTime] The workload classifier start time for classification.
  /// [workloadClassifierName] The name of the workload classifier to create/update.
  /// [workloadGroupName] The name of the workload group from which to receive the classifier from.
  WorkloadClassifierArgs({
    pulumi.Output<String>? context,
    required pulumi.Output<String> databaseName,
    pulumi.Output<String>? endTime,
    pulumi.Output<String>? importance,
    pulumi.Output<String>? label,
    required pulumi.Output<String> memberName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
    pulumi.Output<String>? startTime,
    pulumi.Output<String>? workloadClassifierName,
    required pulumi.Output<String> workloadGroupName,
  }) :
      context = pulumi.Input.asOptionalInput<String>(context),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      importance = pulumi.Input.asOptionalInput<String>(importance),
      label = pulumi.Input.asOptionalInput<String>(label),
      memberName = pulumi.Input.asInput<String>(memberName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      workloadClassifierName = pulumi.Input.asOptionalInput<String>(workloadClassifierName),
      workloadGroupName = pulumi.Input.asInput<String>(workloadGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': ?context,
      'databaseName': databaseName,
      'endTime': ?endTime,
      'importance': ?importance,
      'label': ?label,
      'memberName': memberName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'startTime': ?startTime,
      'workloadClassifierName': ?workloadClassifierName,
      'workloadGroupName': workloadGroupName,
    };
  }

  factory WorkloadClassifierArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadClassifierArgs(
      context: map['context'] == null ? null : pulumi.Output.create<String>(map['context'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      importance: map['importance'] == null ? null : pulumi.Output.create<String>(map['importance'] as String),
      label: map['label'] == null ? null : pulumi.Output.create<String>(map['label'] as String),
      memberName: pulumi.Output.create<String>(map['memberName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
      workloadClassifierName: map['workloadClassifierName'] == null ? null : pulumi.Output.create<String>(map['workloadClassifierName'] as String),
      workloadGroupName: pulumi.Output.create<String>(map['workloadGroupName'] as String),
    );
  }
}

