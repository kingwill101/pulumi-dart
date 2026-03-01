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
    pulumi.Output<String>? expand,
    required pulumi.Output<String> managedInstanceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      managedInstanceName = pulumi.Input.asInput<String>(managedInstanceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'managedInstanceName': managedInstanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedInstanceArgs(
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      managedInstanceName: pulumi.Output.create<String>(map['managedInstanceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

