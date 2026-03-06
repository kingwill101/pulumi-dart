// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'posture_policy_set_policy_constraint_org_policy_constraint.dart';
import 'posture_policy_set_policy_constraint_org_policy_constraint_custom.dart';
import 'posture_policy_set_policy_constraint_security_health_analytics_custom_module.dart';
import 'posture_policy_set_policy_constraint_security_health_analytics_module.dart';

class PosturePolicySetPolicyConstraint {
  /// Organization policy canned constraint definition.
  /// Structure is documented below.
  final pulumi.Input<PosturePolicySetPolicyConstraintOrgPolicyConstraint>? orgPolicyConstraint;
  /// Organization policy custom constraint policy definition.
  /// Structure is documented below.
  final pulumi.Input<PosturePolicySetPolicyConstraintOrgPolicyConstraintCustom>? orgPolicyConstraintCustom;
  /// Definition of Security Health Analytics Custom Module.
  /// Structure is documented below.
  final pulumi.Input<PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModule>? securityHealthAnalyticsCustomModule;
  /// Security Health Analytics built-in detector definition.
  /// Structure is documented below.
  final pulumi.Input<PosturePolicySetPolicyConstraintSecurityHealthAnalyticsModule>? securityHealthAnalyticsModule;

  /// Creates a new [PosturePolicySetPolicyConstraint].
  /// [orgPolicyConstraint] Organization policy canned constraint definition.
  /// [orgPolicyConstraintCustom] Organization policy custom constraint policy definition.
  /// [securityHealthAnalyticsCustomModule] Definition of Security Health Analytics Custom Module.
  /// [securityHealthAnalyticsModule] Security Health Analytics built-in detector definition.
  const PosturePolicySetPolicyConstraint({
    this.orgPolicyConstraint,
    this.orgPolicyConstraintCustom,
    this.securityHealthAnalyticsCustomModule,
    this.securityHealthAnalyticsModule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'orgPolicyConstraint': ?pulumi.Input.mapOptionalInputValue<PosturePolicySetPolicyConstraintOrgPolicyConstraint, Map<String, dynamic>>(orgPolicyConstraint, (value) => value.toMap()),
      'orgPolicyConstraintCustom': ?pulumi.Input.mapOptionalInputValue<PosturePolicySetPolicyConstraintOrgPolicyConstraintCustom, Map<String, dynamic>>(orgPolicyConstraintCustom, (value) => value.toMap()),
      'securityHealthAnalyticsCustomModule': ?pulumi.Input.mapOptionalInputValue<PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModule, Map<String, dynamic>>(securityHealthAnalyticsCustomModule, (value) => value.toMap()),
      'securityHealthAnalyticsModule': ?pulumi.Input.mapOptionalInputValue<PosturePolicySetPolicyConstraintSecurityHealthAnalyticsModule, Map<String, dynamic>>(securityHealthAnalyticsModule, (value) => value.toMap()),
    };
  }

  factory PosturePolicySetPolicyConstraint.fromMap(Map<String, dynamic> map) {
    return PosturePolicySetPolicyConstraint(
      orgPolicyConstraint: (() { final guardedValue = map['orgPolicyConstraint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PosturePolicySetPolicyConstraintOrgPolicyConstraint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      orgPolicyConstraintCustom: (() { final guardedValue = map['orgPolicyConstraintCustom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PosturePolicySetPolicyConstraintOrgPolicyConstraintCustom.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityHealthAnalyticsCustomModule: (() { final guardedValue = map['securityHealthAnalyticsCustomModule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityHealthAnalyticsModule: (() { final guardedValue = map['securityHealthAnalyticsModule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PosturePolicySetPolicyConstraintSecurityHealthAnalyticsModule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

