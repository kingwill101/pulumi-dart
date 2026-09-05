// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_policy_assignment_override_selector.dart';

class GroupPolicyAssignmentOverride {
  /// One or more `overrideSelector` block as defined below.
  final pulumi.Input<List<GroupPolicyAssignmentOverrideSelector>?>? selectors;
  /// Specifies the value to override the policy property. Possible values for `policyEffect` override listed [policy effects](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/effects).
  final pulumi.Input<String> value;

  /// Creates a new [GroupPolicyAssignmentOverride].
  /// [selectors] One or more `overrideSelector` block as defined below.
  /// [value] Specifies the value to override the policy property. Possible values for `policyEffect` override listed [policy effects](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/effects).
  const GroupPolicyAssignmentOverride({
    this.selectors,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectors': ?pulumi.Input.mapOptionalInputValue<List<GroupPolicyAssignmentOverrideSelector>, List<Map<String, dynamic>>>(selectors, (value) => pulumi.Input.encodeList<GroupPolicyAssignmentOverrideSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'value': value,
    };
  }

  factory GroupPolicyAssignmentOverride.fromMap(Map<String, dynamic> map) {
    return GroupPolicyAssignmentOverride(
      selectors: (() { final guardedValue = map['selectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GroupPolicyAssignmentOverrideSelector>(guardedValue, (value) => GroupPolicyAssignmentOverrideSelector.fromMap((value as Map).cast<String, dynamic>()))); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
