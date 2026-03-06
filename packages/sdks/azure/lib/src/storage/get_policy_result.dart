// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_rule.dart';

/// Result data returned by getPolicy.
class GetPolicyResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// supports the following:
  final List<GetPolicyRule> rules;
  final String storageAccountId;

  /// Creates a new [GetPolicyResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [rules] supports the following:
  /// [storageAccountId] Required.
  const GetPolicyResult({
    required this.id,
    required this.rules,
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'rules': pulumi.Input.encodeList<GetPolicyRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
      'storageAccountId': storageAccountId,
    };
  }

  factory GetPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyResult(
      id: map['id'] as String,
      rules: pulumi.Input.decodeList<GetPolicyRule>(map['rules']!, (value) => GetPolicyRule.fromMap((value as Map).cast<String, dynamic>())),
      storageAccountId: map['storageAccountId'] as String,
    );
  }
}

