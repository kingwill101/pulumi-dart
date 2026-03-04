// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_policy_schema.dart';

/// {@template pulumi_storage_management_policy_args_doc}
/// The set of arguments for ManagementPolicy.
/// {@endtemplate}
/// {@macro pulumi_storage_management_policy_args_doc}
class ManagementPolicyArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;

  /// The name of the Storage Account Management Policy. It should always be 'default'
  final pulumi.Input<String>? managementPolicyName;

  /// The Storage Account ManagementPolicy, in JSON format. See more details in: https://learn.microsoft.com/azure/storage/blobs/lifecycle-management-overview.
  final pulumi.Input<ManagementPolicySchema> policy;

  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ManagementPolicyArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [managementPolicyName] The name of the Storage Account Management Policy. It should always be 'default'
  /// [policy] The Storage Account ManagementPolicy, in JSON format. See more details in: https://learn.microsoft.com/azure/storage/blobs/lifecycle-management-overview.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  ManagementPolicyArgs({
    required this.accountName,
    this.managementPolicyName,
    required this.policy,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'managementPolicyName': ?managementPolicyName,
      'policy':
          pulumi.Input.mapInputValue<
            ManagementPolicySchema,
            Map<String, dynamic>
          >(policy, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ManagementPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      managementPolicyName: (() {
        final guardedValue = map['managementPolicyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policy: pulumi.Input.fromValue(
        ManagementPolicySchema.fromMap(
          (map['policy']! as Map).cast<String, dynamic>(),
        ),
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
