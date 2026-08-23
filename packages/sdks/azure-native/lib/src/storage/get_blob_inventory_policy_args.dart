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
  const GetBlobInventoryPolicyArgs({
    required this.accountName,
    required this.blobInventoryPolicyName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'blobInventoryPolicyName': blobInventoryPolicyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBlobInventoryPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetBlobInventoryPolicyArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      blobInventoryPolicyName: pulumi.Input.fromValue(map['blobInventoryPolicyName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
