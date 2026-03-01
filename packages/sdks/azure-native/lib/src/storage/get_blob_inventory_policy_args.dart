// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_blob_inventory_policy_args_doc}
/// Arguments for getBlobInventoryPolicy.
/// {@endtemplate}
/// {@macro pulumi_storage_get_blob_inventory_policy_args_doc}
class GetBlobInventoryPolicyArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// The name of the storage account blob inventory policy. It should always be 'default'
  final pulumi.Input<String> blobInventoryPolicyName;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBlobInventoryPolicyArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [blobInventoryPolicyName] The name of the storage account blob inventory policy. It should always be 'default'
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  GetBlobInventoryPolicyArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> blobInventoryPolicyName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      blobInventoryPolicyName = pulumi.Input.asInput<String>(blobInventoryPolicyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'blobInventoryPolicyName': blobInventoryPolicyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBlobInventoryPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetBlobInventoryPolicyArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      blobInventoryPolicyName: pulumi.Output.create<String>(map['blobInventoryPolicyName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

