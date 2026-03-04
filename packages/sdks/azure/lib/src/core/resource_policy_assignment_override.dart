// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_assignment_override_selector.dart';

class ResourcePolicyAssignmentOverride {
  /// One or more `override_selector` block as defined below.
  final pulumi.Input<List<ResourcePolicyAssignmentOverrideSelector>>? selectors;

  /// Specifies the value to override the policy property. Possible values for `policyEffect` override listed [policy effects](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/effects).
  final pulumi.Input<String> value;

  /// Creates a new [ResourcePolicyAssignmentOverride].
  /// [selectors] One or more `override_selector` block as defined below.
  /// [value] Specifies the value to override the policy property. Possible values for `policyEffect` override listed [policy effects](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/effects).
  ResourcePolicyAssignmentOverride({this.selectors, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectors':
          ?pulumi.Input.mapOptionalInputValue<
            List<ResourcePolicyAssignmentOverrideSelector>,
            List<Map<String, dynamic>>
          >(
            selectors,
            (value) =>
                pulumi.Input.encodeList<
                  ResourcePolicyAssignmentOverrideSelector,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'value': value,
    };
  }

  factory ResourcePolicyAssignmentOverride.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyAssignmentOverride(
      selectors: (() {
        final guardedValue = map['selectors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ResourcePolicyAssignmentOverrideSelector>(
            guardedValue,
            (value) => ResourcePolicyAssignmentOverrideSelector.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
