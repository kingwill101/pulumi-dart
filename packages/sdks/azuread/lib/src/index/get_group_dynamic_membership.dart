// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupDynamicMembership {
  /// Whether rule processing is "On" (true) or "Paused" (false).
  final pulumi.Input<bool> enabled;

  /// The rule that determines membership of this group.
  final pulumi.Input<String> rule;

  /// Creates a new [GetGroupDynamicMembership].
  /// [enabled] Whether rule processing is "On" (true) or "Paused" (false).
  /// [rule] The rule that determines membership of this group.
  GetGroupDynamicMembership({required this.enabled, required this.rule});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled, 'rule': rule};
  }

  factory GetGroupDynamicMembership.fromMap(Map<String, dynamic> map) {
    return GetGroupDynamicMembership(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      rule: pulumi.Input.fromValue(map['rule'] as String),
    );
  }
}
