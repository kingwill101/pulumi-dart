// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_policy_rule.dart';

/// Input properties used for looking up and filtering ManagementPolicy resources.
class ManagementPolicyState {
  /// A `rule` block as documented below.
  final pulumi.Input<List<ManagementPolicyRule>>? rules;
  /// Specifies the id of the storage account to apply the management policy to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageAccountId;

  /// Creates a new [ManagementPolicyState].
  /// [rules] A `rule` block as documented below.
  /// [storageAccountId] Specifies the id of the storage account to apply the management policy to. Changing this forces a new resource to be created.
  const ManagementPolicyState({
    this.rules,
    this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ManagementPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ManagementPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageAccountId': ?storageAccountId,
    };
  }

  factory ManagementPolicyState.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyState(
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagementPolicyRule>(guardedValue, (value) => ManagementPolicyRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

