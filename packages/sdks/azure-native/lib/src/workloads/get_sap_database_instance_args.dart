// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_get_sap_database_instance_args_doc}
/// Arguments for getSapDatabaseInstance.
/// {@endtemplate}
/// {@macro pulumi_workloads_get_sap_database_instance_args_doc}
class GetSapDatabaseInstanceArgs {
  /// Database resource name string modeled as parameter for auto generation to work correctly.
  final pulumi.Input<String> databaseInstanceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Virtual Instances for SAP solutions resource
  final pulumi.Input<String> sapVirtualInstanceName;

  /// Creates a new [GetSapDatabaseInstanceArgs].
  /// [databaseInstanceName] Database resource name string modeled as parameter for auto generation to work correctly.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sapVirtualInstanceName] The name of the Virtual Instances for SAP solutions resource
  GetSapDatabaseInstanceArgs({
    required pulumi.Output<String> databaseInstanceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sapVirtualInstanceName,
  }) :
      databaseInstanceName = pulumi.Input.asInput<String>(databaseInstanceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sapVirtualInstanceName = pulumi.Input.asInput<String>(sapVirtualInstanceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseInstanceName': databaseInstanceName,
      'resourceGroupName': resourceGroupName,
      'sapVirtualInstanceName': sapVirtualInstanceName,
    };
  }

  factory GetSapDatabaseInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetSapDatabaseInstanceArgs(
      databaseInstanceName: pulumi.Output.create<String>(map['databaseInstanceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sapVirtualInstanceName: pulumi.Output.create<String>(map['sapVirtualInstanceName'] as String),
    );
  }
}

