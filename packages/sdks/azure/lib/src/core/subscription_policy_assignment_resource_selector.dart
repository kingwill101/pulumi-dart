// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_policy_assignment_resource_selector_selector.dart';

class SubscriptionPolicyAssignmentResourceSelector {
  /// Specifies a name for the resource selector.
  final pulumi.Input<String>? name;
  /// One or more `resource_selector` block as defined below.
  final pulumi.Input<List<SubscriptionPolicyAssignmentResourceSelectorSelector>> selectors;

  /// Creates a new [SubscriptionPolicyAssignmentResourceSelector].
  /// [name] Specifies a name for the resource selector.
  /// [selectors] One or more `resource_selector` block as defined below.
  const SubscriptionPolicyAssignmentResourceSelector({
    this.name,
    required this.selectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'selectors': pulumi.Input.mapInputValue<List<SubscriptionPolicyAssignmentResourceSelectorSelector>, List<Map<String, dynamic>>>(selectors, (value) => pulumi.Input.encodeList<SubscriptionPolicyAssignmentResourceSelectorSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SubscriptionPolicyAssignmentResourceSelector.fromMap(Map<String, dynamic> map) {
    return SubscriptionPolicyAssignmentResourceSelector(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selectors: pulumi.Input.fromValue(pulumi.Input.decodeList<SubscriptionPolicyAssignmentResourceSelectorSelector>(map['selectors']!, (value) => SubscriptionPolicyAssignmentResourceSelectorSelector.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

