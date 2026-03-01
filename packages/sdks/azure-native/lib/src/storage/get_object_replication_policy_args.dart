// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_object_replication_policy_args_doc}
/// Arguments for getObjectReplicationPolicy.
/// {@endtemplate}
/// {@macro pulumi_storage_get_object_replication_policy_args_doc}
class GetObjectReplicationPolicyArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// For the destination account, provide the value 'default'. Configure the policy on the destination account first. For the source account, provide the value of the policy ID that is returned when you download the policy that was defined on the destination account. The policy is downloaded as a JSON file.
  final pulumi.Input<String> objectReplicationPolicyId;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetObjectReplicationPolicyArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [objectReplicationPolicyId] For the destination account, provide the value 'default'. Configure the policy on the destination account first. For the source account, provide the value of the policy ID that is returned when you download the policy that was defined on the destination account. The policy is downloaded as a JSON file.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  GetObjectReplicationPolicyArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> objectReplicationPolicyId,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      objectReplicationPolicyId = pulumi.Input.asInput<String>(objectReplicationPolicyId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'objectReplicationPolicyId': objectReplicationPolicyId,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetObjectReplicationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetObjectReplicationPolicyArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      objectReplicationPolicyId: pulumi.Output.create<String>(map['objectReplicationPolicyId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

