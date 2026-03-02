// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_policy_rule.dart';

/// The Storage Account ManagementPolicies Rules. See more details in: https://learn.microsoft.com/azure/storage/blobs/lifecycle-management-overview.
class ManagementPolicySchema {
  /// The Storage Account ManagementPolicies Rules. See more details in: https://learn.microsoft.com/azure/storage/blobs/lifecycle-management-overview.
  final pulumi.Input<List<ManagementPolicyRule>> rules;

  /// Creates a new [ManagementPolicySchema].
  /// [rules] The Storage Account ManagementPolicies Rules. See more details in: https://learn.microsoft.com/azure/storage/blobs/lifecycle-management-overview.
  ManagementPolicySchema({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': pulumi.Input.mapInputValue<List<ManagementPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ManagementPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagementPolicySchema.fromMap(Map<String, dynamic> map) {
    return ManagementPolicySchema(
      rules: (pulumi.Input.decodeList<ManagementPolicyRule>(map['rules'], (value) => ManagementPolicyRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

