// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_workload_classifier_args_doc}
/// The set of arguments for WorkloadClassifier.
/// {@endtemplate}
/// {@macro pulumi_sql_workload_classifier_args_doc}
class WorkloadClassifierArgs {
  /// The workload classifier context.
  final pulumi.Input<String?>? context;
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The workload classifier end time for classification.
  final pulumi.Input<String?>? endTime;
  /// The workload classifier importance.
  final pulumi.Input<String?>? importance;
  /// The workload classifier label.
  final pulumi.Input<String?>? label;
  /// The workload classifier member name.
  final pulumi.Input<String> memberName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The workload classifier start time for classification.
  final pulumi.Input<String?>? startTime;
  /// The name of the workload classifier to create/update.
  final pulumi.Input<String?>? workloadClassifierName;
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
  const WorkloadClassifierArgs({
    this.context,
    required this.databaseName,
    this.endTime,
    this.importance,
    this.label,
    required this.memberName,
    required this.resourceGroupName,
    required this.serverName,
    this.startTime,
    this.workloadClassifierName,
    required this.workloadGroupName,
  });

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
      context: (() { final guardedValue = map['context']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      importance: (() { final guardedValue = map['importance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memberName: pulumi.Input.fromValue(map['memberName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadClassifierName: (() { final guardedValue = map['workloadClassifierName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadGroupName: pulumi.Input.fromValue(map['workloadGroupName'] as String),
    );
  }
}
