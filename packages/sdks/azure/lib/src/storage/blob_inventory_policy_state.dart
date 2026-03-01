// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_inventory_policy_rule.dart';

/// Input properties used for looking up and filtering BlobInventoryPolicy resources.
class BlobInventoryPolicyState {
  /// One or more `rules` blocks as defined below.
  final pulumi.Input<List<BlobInventoryPolicyRule>>? rules;
  /// The ID of the storage account to apply this Blob Inventory Policy to. Changing this forces a new Storage Blob Inventory Policy to be created.
  final pulumi.Input<String>? storageAccountId;

  /// Creates a new [BlobInventoryPolicyState].
  /// [rules] One or more `rules` blocks as defined below.
  /// [storageAccountId] The ID of the storage account to apply this Blob Inventory Policy to. Changing this forces a new Storage Blob Inventory Policy to be created.
  BlobInventoryPolicyState({
    pulumi.Output<List<BlobInventoryPolicyRule>>? rules,
    pulumi.Output<String>? storageAccountId,
  }) :
      rules = pulumi.Input.asOptionalInput<List<BlobInventoryPolicyRule>>(rules),
      storageAccountId = pulumi.Input.asOptionalInput<String>(storageAccountId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<BlobInventoryPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<BlobInventoryPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageAccountId': ?storageAccountId,
    };
  }

  factory BlobInventoryPolicyState.fromMap(Map<String, dynamic> map) {
    return BlobInventoryPolicyState(
      rules: map['rules'] == null ? null : pulumi.Output.create<List<BlobInventoryPolicyRule>>(pulumi.Input.decodeList<BlobInventoryPolicyRule>(map['rules'], (value) => BlobInventoryPolicyRule.fromMap((value as Map).cast<String, dynamic>()))),
      storageAccountId: map['storageAccountId'] == null ? null : pulumi.Output.create<String>(map['storageAccountId'] as String),
    );
  }
}

