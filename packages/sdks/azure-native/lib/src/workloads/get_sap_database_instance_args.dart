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
    required this.databaseInstanceName,
    required this.resourceGroupName,
    required this.sapVirtualInstanceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseInstanceName': databaseInstanceName,
      'resourceGroupName': resourceGroupName,
      'sapVirtualInstanceName': sapVirtualInstanceName,
    };
  }

  factory GetSapDatabaseInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetSapDatabaseInstanceArgs(
      databaseInstanceName: pulumi.Input.fromValue(
        map['databaseInstanceName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sapVirtualInstanceName: pulumi.Input.fromValue(
        map['sapVirtualInstanceName'] as String,
      ),
    );
  }
}
