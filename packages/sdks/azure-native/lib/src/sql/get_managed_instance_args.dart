// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_managed_instance_args_doc}
/// Arguments for getManagedInstance.
/// {@endtemplate}
/// {@macro pulumi_sql_get_managed_instance_args_doc}
class GetManagedInstanceArgs {
  /// The child resources to include in the response.
  final pulumi.Input<String>? expand;

  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;

  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedInstanceArgs].
  /// [expand] The child resources to include in the response.
  /// [managedInstanceName] The name of the managed instance.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  GetManagedInstanceArgs({
    this.expand,
    required this.managedInstanceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'managedInstanceName': managedInstanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedInstanceArgs(
      expand: (() {
        final guardedValue = map['expand'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedInstanceName: pulumi.Input.fromValue(
        map['managedInstanceName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
