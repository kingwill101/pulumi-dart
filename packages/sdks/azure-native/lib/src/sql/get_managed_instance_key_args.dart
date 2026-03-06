// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_managed_instance_key_args_doc}
/// Arguments for getManagedInstanceKey.
/// {@endtemplate}
/// {@macro pulumi_sql_get_managed_instance_key_args_doc}
class GetManagedInstanceKeyArgs {
  /// The name of the managed instance key to be retrieved.
  final pulumi.Input<String> keyName;
  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedInstanceKeyArgs].
  /// [keyName] The name of the managed instance key to be retrieved.
  /// [managedInstanceName] The name of the managed instance.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  const GetManagedInstanceKeyArgs({
    required this.keyName,
    required this.managedInstanceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'managedInstanceName': managedInstanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedInstanceKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedInstanceKeyArgs(
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      managedInstanceName: pulumi.Input.fromValue(map['managedInstanceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

