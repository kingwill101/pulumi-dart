// ignore_for_file: unused_element, unnecessary_cast


class ConditionalAccessPolicyConditionsDevicesFilter {
  /// Whether to include in, or exclude from, matching items from the policy. Supported values are `include` or `exclude`.
  final String mode;
  /// Condition filter to match items.
  final String rule;

  /// Creates a new [ConditionalAccessPolicyConditionsDevicesFilter].
  /// [mode] Whether to include in, or exclude from, matching items from the policy. Supported values are `include` or `exclude`.
  /// [rule] Condition filter to match items.
  ConditionalAccessPolicyConditionsDevicesFilter({
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
      mode: map['mode'] as String,
      rule: map['rule'] as String,
    );
  }
}

