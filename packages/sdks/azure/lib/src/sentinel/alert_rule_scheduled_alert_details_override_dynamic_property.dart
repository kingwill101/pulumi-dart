// ignore_for_file: unused_element, unnecessary_cast


class AlertRuleScheduledAlertDetailsOverrideDynamicProperty {
  /// The name of the dynamic property. Possible values are `AlertLink`, `ConfidenceLevel`, `ConfidenceScore`, `ExtendedLinks`, `ProductComponentName`, `ProductName`, `ProviderName`, `RemediationSteps`, `SubTechniques` and `Techniques`.
  final String name;
  /// The value of the dynamic property. Pssible Values are `Caller`, `dcount_ResourceId` and `EventSubmissionTimestamp`.
  final String value;

  /// Creates a new [AlertRuleScheduledAlertDetailsOverrideDynamicProperty].
  /// [name] The name of the dynamic property. Possible values are `AlertLink`, `ConfidenceLevel`, `ConfidenceScore`, `ExtendedLinks`, `ProductComponentName`, `ProductName`, `ProviderName`, `RemediationSteps`, `SubTechniques` and `Techniques`.
  /// [value] The value of the dynamic property. Pssible Values are `Caller`, `dcount_ResourceId` and `EventSubmissionTimestamp`.
  AlertRuleScheduledAlertDetailsOverrideDynamicProperty({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory AlertRuleScheduledAlertDetailsOverrideDynamicProperty.fromMap(Map<String, dynamic> map) {
    return AlertRuleScheduledAlertDetailsOverrideDynamicProperty(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

