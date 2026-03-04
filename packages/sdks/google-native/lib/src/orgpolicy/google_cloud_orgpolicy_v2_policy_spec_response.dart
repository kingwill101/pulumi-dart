// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_orgpolicy_v2_policy_spec_policy_rule_response.dart';

/// Defines a Google Cloud policy specification which is used to specify constraints for configurations of Google Cloud resources.
class GoogleCloudOrgpolicyV2PolicySpecResponse {
  /// An opaque tag indicating the current version of the policy, used for concurrency control. This field is ignored if used in a `CreatePolicy` request. When the policy` is returned from either a `GetPolicy` or a `ListPolicies` request, this `etag` indicates the version of the current policy to use when executing a read-modify-write loop. When the policy is returned from a `GetEffectivePolicy` request, the `etag` will be unset.
  final pulumi.Input<String> etag;

  /// Determines the inheritance behavior for this policy. If `inherit_from_parent` is true, policy rules set higher up in the hierarchy (up to the closest root) are inherited and present in the effective policy. If it is false, then no rules are inherited, and this policy becomes the new root for evaluation. This field can be set only for policies which configure list constraints.
  final pulumi.Input<bool> inheritFromParent;

  /// Ignores policies set above this resource and restores the `constraint_default` enforcement behavior of the specific constraint at this resource. This field can be set in policies for either list or boolean constraints. If set, `rules` must be empty and `inherit_from_parent` must be set to false.
  final pulumi.Input<bool> reset;

  /// In policies for boolean constraints, the following requirements apply: - There must be one and only one policy rule where condition is unset. - Boolean policy rules with conditions must set `enforced` to the opposite of the policy rule without a condition. - During policy evaluation, policy rules with conditions that are true for a target resource take precedence.
  final pulumi.Input<List<GoogleCloudOrgpolicyV2PolicySpecPolicyRuleResponse>>
  rules;

  /// The time stamp this was previously updated. This represents the last time a call to `CreatePolicy` or `UpdatePolicy` was made for that policy.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GoogleCloudOrgpolicyV2PolicySpecResponse].
  /// [etag] An opaque tag indicating the current version of the policy, used for concurrency control. This field is ignored if used in a `CreatePolicy` request. When the policy` is returned from either a `GetPolicy` or a `ListPolicies` request, this `etag` indicates the version of the current policy to use when executing a read-modify-write loop. When the policy is returned from a `GetEffectivePolicy` request, the `etag` will be unset.
  /// [inheritFromParent] Determines the inheritance behavior for this policy. If `inherit_from_parent` is true, policy rules set higher up in the hierarchy (up to the closest root) are inherited and present in the effective policy. If it is false, then no rules are inherited, and this policy becomes the new root for evaluation. This field can be set only for policies which configure list constraints.
  /// [reset] Ignores policies set above this resource and restores the `constraint_default` enforcement behavior of the specific constraint at this resource. This field can be set in policies for either list or boolean constraints. If set, `rules` must be empty and `inherit_from_parent` must be set to false.
  /// [rules] In policies for boolean constraints, the following requirements apply: - There must be one and only one policy rule where condition is unset. - Boolean policy rules with conditions must set `enforced` to the opposite of the policy rule without a condition. - During policy evaluation, policy rules with conditions that are true for a target resource take precedence.
  /// [updateTime] The time stamp this was previously updated. This represents the last time a call to `CreatePolicy` or `UpdatePolicy` was made for that policy.
  GoogleCloudOrgpolicyV2PolicySpecResponse({
    required this.etag,
    required this.inheritFromParent,
    required this.reset,
    required this.rules,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'inheritFromParent': inheritFromParent,
      'reset': reset,
      'rules':
          pulumi.Input.mapInputValue<
            List<GoogleCloudOrgpolicyV2PolicySpecPolicyRuleResponse>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudOrgpolicyV2PolicySpecPolicyRuleResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'updateTime': updateTime,
    };
  }

  factory GoogleCloudOrgpolicyV2PolicySpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudOrgpolicyV2PolicySpecResponse(
      etag: pulumi.Input.fromValue(map['etag'] as String),
      inheritFromParent: pulumi.Input.fromValue(
        map['inheritFromParent'] as bool,
      ),
      reset: pulumi.Input.fromValue(map['reset'] as bool),
      rules: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GoogleCloudOrgpolicyV2PolicySpecPolicyRuleResponse
        >(
          map['rules']!,
          (value) => GoogleCloudOrgpolicyV2PolicySpecPolicyRuleResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}
