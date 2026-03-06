// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConditionalAccessPolicyConditionsDevicesFilter {
  /// Whether to include in, or exclude from, matching items from the policy. Supported values are `include` or `exclude`.
  final pulumi.Input<String> mode;
  /// Condition filter to match items.
  final pulumi.Input<String> rule;

  /// Creates a new [ConditionalAccessPolicyConditionsDevicesFilter].
  /// [mode] Whether to include in, or exclude from, matching items from the policy. Supported values are `include` or `exclude`.
  /// [rule] Condition filter to match items.
  const ConditionalAccessPolicyConditionsDevicesFilter({
    required this.mode,
    required this.rule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'rule': rule,
    };
  }

  factory ConditionalAccessPolicyConditionsDevicesFilter.fromMap(Map<String, dynamic> map) {
    return ConditionalAccessPolicyConditionsDevicesFilter(
      mode: pulumi.Input.fromValue(map['mode'] as String),
      rule: pulumi.Input.fromValue(map['rule'] as String),
    );
  }
}

