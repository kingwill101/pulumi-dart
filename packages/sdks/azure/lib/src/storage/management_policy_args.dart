// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_policy_rule.dart';

/// {@template pulumi_storage_management_policy_management_policy_args_doc}
/// The set of arguments for ManagementPolicy.
/// {@endtemplate}
/// {@macro pulumi_storage_management_policy_management_policy_args_doc}
class ManagementPolicyArgs {
  /// A `rule` block as documented below.
  final pulumi.Input<List<ManagementPolicyRule>>? rules;
  /// Specifies the id of the storage account to apply the management policy to. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [ManagementPolicyArgs].
  /// [rules] A `rule` block as documented below.
  /// [storageAccountId] Specifies the id of the storage account to apply the management policy to. Changing this forces a new resource to be created.
  ManagementPolicyArgs({
    pulumi.Output<List<ManagementPolicyRule>>? rules,
    required pulumi.Output<String> storageAccountId,
  }) :
      rules = pulumi.Input.asOptionalInput<List<ManagementPolicyRule>>(rules),
      storageAccountId = pulumi.Input.asInput<String>(storageAccountId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ManagementPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ManagementPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageAccountId': storageAccountId,
    };
  }

  factory ManagementPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyArgs(
      rules: map['rules'] == null ? null : pulumi.Output.create<List<ManagementPolicyRule>>(pulumi.Input.decodeList<ManagementPolicyRule>(map['rules'], (value) => ManagementPolicyRule.fromMap((value as Map).cast<String, dynamic>()))),
      storageAccountId: pulumi.Output.create<String>(map['storageAccountId'] as String),
    );
  }
}

