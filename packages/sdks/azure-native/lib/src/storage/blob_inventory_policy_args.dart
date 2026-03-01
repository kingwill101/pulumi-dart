// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_inventory_policy_schema.dart';

/// {@template pulumi_storage_blob_inventory_policy_args_doc}
/// The set of arguments for BlobInventoryPolicy.
/// {@endtemplate}
/// {@macro pulumi_storage_blob_inventory_policy_args_doc}
class BlobInventoryPolicyArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// The name of the storage account blob inventory policy. It should always be 'default'
  final pulumi.Input<String>? blobInventoryPolicyName;
  /// The storage account blob inventory policy object. It is composed of policy rules.
  final pulumi.Input<BlobInventoryPolicySchema> policy;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [BlobInventoryPolicyArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [blobInventoryPolicyName] The name of the storage account blob inventory policy. It should always be 'default'
  /// [policy] The storage account blob inventory policy object. It is composed of policy rules.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  BlobInventoryPolicyArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? blobInventoryPolicyName,
    required pulumi.Output<BlobInventoryPolicySchema> policy,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      blobInventoryPolicyName = pulumi.Input.asOptionalInput<String>(blobInventoryPolicyName),
      policy = pulumi.Input.asInput<BlobInventoryPolicySchema>(policy),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'blobInventoryPolicyName': ?blobInventoryPolicyName,
      'policy': pulumi.Input.mapInputValue<BlobInventoryPolicySchema, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory BlobInventoryPolicyArgs.fromMap(Map<String, dynamic> map) {
    return BlobInventoryPolicyArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      blobInventoryPolicyName: map['blobInventoryPolicyName'] == null ? null : pulumi.Output.create<String>(map['blobInventoryPolicyName'] as String),
      policy: pulumi.Output.create<BlobInventoryPolicySchema>(BlobInventoryPolicySchema.fromMap((map['policy'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

