// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_workload_group_args_doc}
/// Arguments for getWorkloadGroup.
/// {@endtemplate}
/// {@macro pulumi_sql_get_workload_group_args_doc}
class GetWorkloadGroupArgs {
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The name of the workload group.
  final pulumi.Input<String> workloadGroupName;

  /// Creates a new [GetWorkloadGroupArgs].
  /// [databaseName] The name of the database.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [workloadGroupName] The name of the workload group.
  GetWorkloadGroupArgs({
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
    required pulumi.Output<String> workloadGroupName,
  }) :
      databaseName = pulumi.Input.asInput<String>(databaseName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      workloadGroupName = pulumi.Input.asInput<String>(workloadGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'workloadGroupName': workloadGroupName,
    };
  }

  factory GetWorkloadGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadGroupArgs(
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
      workloadGroupName: pulumi.Output.create<String>(map['workloadGroupName'] as String),
    );
  }
}

