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
    required this.enterprisePolicyName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enterprisePolicyName': enterprisePolicyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEnterprisePolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetEnterprisePolicyArgs(
      enterprisePolicyName: (map['enterprisePolicyName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

