// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_rule.dart';

/// Result data returned by getPolicy.
class GetPolicyResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// supports the following:
  final List<GetPolicyRule>? rules;
  final String? storageAccountId;

  /// Creates a new [GetPolicyResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [rules] supports the following:
  /// [storageAccountId] Optional.
  const GetPolicyResult({
    this.id,
    this.rules,
    this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPolicyRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'storageAccountId': ?storageAccountId,
    };
  }

  factory GetPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPolicyRule>(guardedValue, (value) => GetPolicyRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
