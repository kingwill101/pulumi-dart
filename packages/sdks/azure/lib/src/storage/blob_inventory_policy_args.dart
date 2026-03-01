// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_inventory_policy_rule.dart';

/// {@template pulumi_storage_blob_inventory_policy_blob_inventory_policy_args_doc}
/// The set of arguments for BlobInventoryPolicy.
/// {@endtemplate}
/// {@macro pulumi_storage_blob_inventory_policy_blob_inventory_policy_args_doc}
class BlobInventoryPolicyArgs {
  /// One or more `rules` blocks as defined below.
  final pulumi.Input<List<BlobInventoryPolicyRule>> rules;
  /// The ID of the storage account to apply this Blob Inventory Policy to. Changing this forces a new Storage Blob Inventory Policy to be created.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [BlobInventoryPolicyArgs].
  /// [rules] One or more `rules` blocks as defined below.
  /// [storageAccountId] The ID of the storage account to apply this Blob Inventory Policy to. Changing this forces a new Storage Blob Inventory Policy to be created.
  BlobInventoryPolicyArgs({
    required pulumi.Output<List<BlobInventoryPolicyRule>> rules,
    required pulumi.Output<String> storageAccountId,
  }) :
      rules = pulumi.Input.asInput<List<BlobInventoryPolicyRule>>(rules),
      storageAccountId = pulumi.Input.asInput<String>(storageAccountId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': pulumi.Input.mapInputValue<List<BlobInventoryPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<BlobInventoryPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageAccountId': storageAccountId,
    };
  }

  factory BlobInventoryPolicyArgs.fromMap(Map<String, dynamic> map) {
    return BlobInventoryPolicyArgs(
      rules: pulumi.Output.create<List<BlobInventoryPolicyRule>>(pulumi.Input.decodeList<BlobInventoryPolicyRule>(map['rules'], (value) => BlobInventoryPolicyRule.fromMap((value as Map).cast<String, dynamic>()))),
      storageAccountId: pulumi.Output.create<String>(map['storageAccountId'] as String),
    );
  }
}

