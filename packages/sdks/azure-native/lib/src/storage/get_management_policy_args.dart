// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_management_policy_args_doc}
/// Arguments for getManagementPolicy.
/// {@endtemplate}
/// {@macro pulumi_storage_get_management_policy_args_doc}
class GetManagementPolicyArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// The name of the Storage Account Management Policy. It should always be 'default'
  final pulumi.Input<String> managementPolicyName;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagementPolicyArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [managementPolicyName] The name of the Storage Account Management Policy. It should always be 'default'
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  GetManagementPolicyArgs({
    required this.accountName,
    required this.managementPolicyName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'managementPolicyName': managementPolicyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagementPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetManagementPolicyArgs(
      accountName: (map['accountName'] as String).input(),
      managementPolicyName: (map['managementPolicyName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

