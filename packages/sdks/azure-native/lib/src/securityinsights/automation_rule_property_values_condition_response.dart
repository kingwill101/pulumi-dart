// ignore_for_file: unused_element, unnecessary_cast


class AutomationRulePropertyValuesConditionResponse {
  final String? operator;
  /// The property to evaluate in an automation rule property condition.
  final String? propertyName;
  final List<String>? propertyValues;

  /// Creates a new [AutomationRulePropertyValuesConditionResponse].
  /// [operator] Optional.
  /// [propertyName] The property to evaluate in an automation rule property condition.
  /// [propertyValues] Optional.
  AutomationRulePropertyValuesConditionResponse({
    this.operator,
    this.propertyName,
    this.propertyValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': ?operator,
      'propertyName': ?propertyName,
      'propertyValues': ?propertyValues,
    };
  }

  factory AutomationRulePropertyValuesConditionResponse.fromMap(Map<String, dynamic> map) {
    return AutomationRulePropertyValuesConditionResponse(
      operator: map['operator'] == null ? null : map['operator'] as String,
      propertyName: map['propertyName'] == null ? null : map['propertyName'] as String,
      propertyValues: map['propertyValues'] == null ? null : (map['propertyValues'] as List).cast<String>(),
    );
  }
}

