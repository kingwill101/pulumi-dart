// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_policy_list_policy_allow.dart';
import 'get_organization_policy_list_policy_deny.dart';

class GetOrganizationPolicyListPolicy {
  /// One or the other must be set.
  final pulumi.Input<List<GetOrganizationPolicyListPolicyAllow>> allows;
  /// One or the other must be set.
  final pulumi.Input<List<GetOrganizationPolicyListPolicyDeny>> denies;
  /// If set to true, the values from the effective Policy of the parent resource are inherited, meaning the values set in this Policy are added to the values inherited up the hierarchy.
  final pulumi.Input<bool> inheritFromParent;
  /// The Google Cloud Console will try to default to a configuration that matches the value specified in this field.
  final pulumi.Input<String> suggestedValue;

  /// Creates a new [GetOrganizationPolicyListPolicy].
  /// [allows] One or the other must be set.
  /// [denies] One or the other must be set.
  /// [inheritFromParent] If set to true, the values from the effective Policy of the parent resource are inherited, meaning the values set in this Policy are added to the values inherited up the hierarchy.
  /// [suggestedValue] The Google Cloud Console will try to default to a configuration that matches the value specified in this field.
  GetOrganizationPolicyListPolicy({
    required this.allows,
    required this.denies,
    required this.inheritFromParent,
    required this.suggestedValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allows': pulumi.Input.mapInputValue<List<GetOrganizationPolicyListPolicyAllow>, List<Map<String, dynamic>>>(allows, (value) => pulumi.Input.encodeList<GetOrganizationPolicyListPolicyAllow, Map<String, dynamic>>(value, (value) => value.toMap())),
      'denies': pulumi.Input.mapInputValue<List<GetOrganizationPolicyListPolicyDeny>, List<Map<String, dynamic>>>(denies, (value) => pulumi.Input.encodeList<GetOrganizationPolicyListPolicyDeny, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inheritFromParent': inheritFromParent,
      'suggestedValue': suggestedValue,
    };
  }

  factory GetOrganizationPolicyListPolicy.fromMap(Map<String, dynamic> map) {
    return GetOrganizationPolicyListPolicy(
      allows: (pulumi.Input.decodeList<GetOrganizationPolicyListPolicyAllow>(map['allows'], (value) => GetOrganizationPolicyListPolicyAllow.fromMap((value as Map).cast<String, dynamic>()))).input(),
      denies: (pulumi.Input.decodeList<GetOrganizationPolicyListPolicyDeny>(map['denies'], (value) => GetOrganizationPolicyListPolicyDeny.fromMap((value as Map).cast<String, dynamic>()))).input(),
      inheritFromParent: (map['inheritFromParent'] as bool).input(),
      suggestedValue: (map['suggestedValue'] as String).input(),
    );
  }
}

