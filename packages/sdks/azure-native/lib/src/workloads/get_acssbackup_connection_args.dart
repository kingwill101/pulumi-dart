// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_get_acssbackup_connection_args_doc}
/// Arguments for getACSSBackupConnection.
/// {@endtemplate}
/// {@macro pulumi_workloads_get_acssbackup_connection_args_doc}
class GetACSSBackupConnectionArgs {
  /// The name of the backup connection resource of virtual instance for SAP.
  final pulumi.Input<String> backupName;
  /// The name of the connector resource
  final pulumi.Input<String> connectorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetACSSBackupConnectionArgs].
  /// [backupName] The name of the backup connection resource of virtual instance for SAP.
  /// [connectorName] The name of the connector resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetACSSBackupConnectionArgs({
    required pulumi.Output<String> backupName,
    required pulumi.Output<String> connectorName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      backupName = pulumi.Input.asInput<String>(backupName),
      connectorName = pulumi.Input.asInput<String>(connectorName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupName': backupName,
      'connectorName': connectorName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetACSSBackupConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetACSSBackupConnectionArgs(
      backupName: pulumi.Output.create<String>(map['backupName'] as String),
      connectorName: pulumi.Output.create<String>(map['connectorName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

