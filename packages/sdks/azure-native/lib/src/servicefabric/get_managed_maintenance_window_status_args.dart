// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabric_get_managed_maintenance_window_status_args_doc}
/// Arguments for getManagedMaintenanceWindowStatus.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_get_managed_maintenance_window_status_args_doc}
class GetManagedMaintenanceWindowStatusArgs {
  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedMaintenanceWindowStatusArgs].
  /// [clusterName] The name of the cluster resource.
  /// [resourceGroupName] The name of the resource group.
  GetManagedMaintenanceWindowStatusArgs({
    required this.clusterName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedMaintenanceWindowStatusArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetManagedMaintenanceWindowStatusArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
