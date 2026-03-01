// ignore_for_file: unused_element, unnecessary_cast


class AutomationRulePropertyArrayChangedValuesConditionResponse {
  final String? arrayType;
  final String? changeType;

  /// Creates a new [AutomationRulePropertyArrayChangedValuesConditionResponse].
  /// [arrayType] Optional.
  /// [changeType] Optional.
  AutomationRulePropertyArrayChangedValuesConditionResponse({
    this.arrayType,
    this.changeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arrayType': ?arrayType,
      'changeType': ?changeType,
    };
  }

  factory AutomationRulePropertyArrayChangedValuesConditionResponse.fromMap(Map<String, dynamic> map) {
    return AutomationRulePropertyArrayChangedValuesConditionResponse(
      arrayType: map['arrayType'] == null ? null : map['arrayType'] as String,
      changeType: map['changeType'] == null ? null : map['changeType'] as String,
    );
  }
}

