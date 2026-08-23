// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_managed_instance_long_term_retention_policy_args_doc}
/// Arguments for getManagedInstanceLongTermRetentionPolicy.
/// {@endtemplate}
/// {@macro pulumi_sql_get_managed_instance_long_term_retention_policy_args_doc}
class GetManagedInstanceLongTermRetentionPolicyArgs {
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;
  /// The policy name. Should always be Default.
  final pulumi.Input<String> policyName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedInstanceLongTermRetentionPolicyArgs].
  /// [databaseName] The name of the database.
  /// [managedInstanceName] The name of the managed instance.
  /// [policyName] The policy name. Should always be Default.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  const GetManagedInstanceLongTermRetentionPolicyArgs({
    required this.databaseName,
    required this.managedInstanceName,
    required this.policyName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'managedInstanceName': managedInstanceName,
      'policyName': policyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedInstanceLongTermRetentionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedInstanceLongTermRetentionPolicyArgs(
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      managedInstanceName: pulumi.Input.fromValue(map['managedInstanceName'] as String),
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
