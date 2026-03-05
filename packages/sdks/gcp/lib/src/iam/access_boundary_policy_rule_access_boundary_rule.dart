// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_boundary_policy_rule_access_boundary_rule_availability_condition.dart';

class AccessBoundaryPolicyRuleAccessBoundaryRule {
  /// The availability condition further constrains the access allowed by the access boundary rule.
  /// Structure is documented below.
  final pulumi.Input<AccessBoundaryPolicyRuleAccessBoundaryRuleAvailabilityCondition>? availabilityCondition;
  /// A list of permissions that may be allowed for use on the specified resource.
  final pulumi.Input<List<String>>? availablePermissions;
  /// The full resource name of a Google Cloud resource entity.
  final pulumi.Input<String>? availableResource;

  /// Creates a new [AccessBoundaryPolicyRuleAccessBoundaryRule].
  /// [availabilityCondition] The availability condition further constrains the access allowed by the access boundary rule.
  /// [availablePermissions] A list of permissions that may be allowed for use on the specified resource.
  /// [availableResource] The full resource name of a Google Cloud resource entity.
  AccessBoundaryPolicyRuleAccessBoundaryRule({
    this.availabilityCondition,
    this.availablePermissions,
    this.availableResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityCondition': ?pulumi.Input.mapOptionalInputValue<AccessBoundaryPolicyRuleAccessBoundaryRuleAvailabilityCondition, Map<String, dynamic>>(availabilityCondition, (value) => value.toMap()),
      'availablePermissions': ?availablePermissions,
      'availableResource': ?availableResource,
    };
  }

  factory AccessBoundaryPolicyRuleAccessBoundaryRule.fromMap(Map<String, dynamic> map) {
    return AccessBoundaryPolicyRuleAccessBoundaryRule(
      availabilityCondition: (() { final guardedValue = map['availabilityCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessBoundaryPolicyRuleAccessBoundaryRuleAvailabilityCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      availablePermissions: (() { final guardedValue = map['availablePermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      availableResource: (() { final guardedValue = map['availableResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

