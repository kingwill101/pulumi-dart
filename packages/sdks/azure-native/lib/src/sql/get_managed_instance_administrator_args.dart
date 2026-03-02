// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_managed_instance_administrator_args_doc}
/// Arguments for getManagedInstanceAdministrator.
/// {@endtemplate}
/// {@macro pulumi_sql_get_managed_instance_administrator_args_doc}
class GetManagedInstanceAdministratorArgs {
  final pulumi.Input<String> administratorName;
  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedInstanceAdministratorArgs].
  /// [administratorName] Required.
  /// [managedInstanceName] The name of the managed instance.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  GetManagedInstanceAdministratorArgs({
    required this.administratorName,
    required this.managedInstanceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorName': administratorName,
      'managedInstanceName': managedInstanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedInstanceAdministratorArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedInstanceAdministratorArgs(
      administratorName: (map['administratorName'] as String).input(),
      managedInstanceName: (map['managedInstanceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

