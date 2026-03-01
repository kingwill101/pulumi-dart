// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_workload_classifier_args_doc}
/// Arguments for getWorkloadClassifier.
/// {@endtemplate}
/// {@macro pulumi_sql_get_workload_classifier_args_doc}
class GetWorkloadClassifierArgs {
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The name of the workload classifier.
  final pulumi.Input<String> workloadClassifierName;
  /// The name of the workload group from which to receive the classifier from.
  final pulumi.Input<String> workloadGroupName;

  /// Creates a new [GetWorkloadClassifierArgs].
  /// [databaseName] The name of the database.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [workloadClassifierName] The name of the workload classifier.
  /// [workloadGroupName] The name of the workload group from which to receive the classifier from.
  GetWorkloadClassifierArgs({
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
    required pulumi.Output<String> workloadClassifierName,
    required pulumi.Output<String> workloadGroupName,
  }) :
      databaseName = pulumi.Input.asInput<String>(databaseName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      workloadClassifierName = pulumi.Input.asInput<String>(workloadClassifierName),
      workloadGroupName = pulumi.Input.asInput<String>(workloadGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'workloadClassifierName': workloadClassifierName,
      'workloadGroupName': workloadGroupName,
    };
  }

  factory GetWorkloadClassifierArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadClassifierArgs(
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
      workloadClassifierName: pulumi.Output.create<String>(map['workloadClassifierName'] as String),
      workloadGroupName: pulumi.Output.create<String>(map['workloadGroupName'] as String),
    );
  }
}

