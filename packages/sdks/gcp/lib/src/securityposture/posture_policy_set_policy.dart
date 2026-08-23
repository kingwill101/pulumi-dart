// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'posture_policy_set_policy_compliance_standard.dart';
import 'posture_policy_set_policy_constraint.dart';

class PosturePolicySetPolicy {
  /// Mapping for policy to security standards and controls.
  /// Structure is documented below.
  final pulumi.Input<List<PosturePolicySetPolicyComplianceStandard>>? complianceStandards;
  /// Policy constraint definition.It can have the definition of one of following constraints: orgPolicyConstraint orgPolicyConstraintCustom securityHealthAnalyticsModule securityHealthAnalyticsCustomModule
  /// Structure is documented below.
  final pulumi.Input<PosturePolicySetPolicyConstraint> constraint;
  /// Description of the policy.
  final pulumi.Input<String>? description;
  /// ID of the policy.
  final pulumi.Input<String> policyId;

  /// Creates a new [PosturePolicySetPolicy].
  /// [complianceStandards] Mapping for policy to security standards and controls.
  /// [constraint] Policy constraint definition.It can have the definition of one of following constraints: orgPolicyConstraint orgPolicyConstraintCustom securityHealthAnalyticsModule securityHealthAnalyticsCustomModule
  /// [description] Description of the policy.
  /// [policyId] ID of the policy.
  const PosturePolicySetPolicy({
    this.complianceStandards,
    required this.constraint,
    this.description,
    required this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complianceStandards': ?pulumi.Input.mapOptionalInputValue<List<PosturePolicySetPolicyComplianceStandard>, List<Map<String, dynamic>>>(complianceStandards, (value) => pulumi.Input.encodeList<PosturePolicySetPolicyComplianceStandard, Map<String, dynamic>>(value, (value) => value.toMap())),
      'constraint': pulumi.Input.mapInputValue<PosturePolicySetPolicyConstraint, Map<String, dynamic>>(constraint, (value) => value.toMap()),
      'description': ?description,
      'policyId': policyId,
    };
  }

  factory PosturePolicySetPolicy.fromMap(Map<String, dynamic> map) {
    return PosturePolicySetPolicy(
      complianceStandards: (() { final guardedValue = map['complianceStandards']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PosturePolicySetPolicyComplianceStandard>(guardedValue, (value) => PosturePolicySetPolicyComplianceStandard.fromMap((value as Map).cast<String, dynamic>()))); })(),
      constraint: pulumi.Input.fromValue(PosturePolicySetPolicyConstraint.fromMap((map['constraint']! as Map).cast<String, dynamic>())),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
    );
  }
}
