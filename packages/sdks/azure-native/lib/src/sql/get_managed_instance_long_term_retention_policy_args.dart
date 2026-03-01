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
  GetManagedInstanceLongTermRetentionPolicyArgs({
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> managedInstanceName,
    required pulumi.Output<String> policyName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      databaseName = pulumi.Input.asInput<String>(databaseName),
      managedInstanceName = pulumi.Input.asInput<String>(managedInstanceName),
      policyName = pulumi.Input.asInput<String>(policyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      managedInstanceName: pulumi.Output.create<String>(map['managedInstanceName'] as String),
      policyName: pulumi.Output.create<String>(map['policyName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

