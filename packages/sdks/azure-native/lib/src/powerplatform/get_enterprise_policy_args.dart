// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_powerplatform_get_enterprise_policy_args_doc}
/// Arguments for getEnterprisePolicy.
/// {@endtemplate}
/// {@macro pulumi_powerplatform_get_enterprise_policy_args_doc}
class GetEnterprisePolicyArgs {
  /// The EnterprisePolicy name.
  final pulumi.Input<String> enterprisePolicyName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEnterprisePolicyArgs].
  /// [enterprisePolicyName] The EnterprisePolicy name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEnterprisePolicyArgs({
    required pulumi.Output<String> enterprisePolicyName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      enterprisePolicyName = pulumi.Input.asInput<String>(enterprisePolicyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enterprisePolicyName': enterprisePolicyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEnterprisePolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetEnterprisePolicyArgs(
      enterprisePolicyName: pulumi.Output.create<String>(map['enterprisePolicyName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

