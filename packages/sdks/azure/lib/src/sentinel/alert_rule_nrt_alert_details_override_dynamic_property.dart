// ignore_for_file: unused_element, unnecessary_cast


class AlertRuleNrtAlertDetailsOverrideDynamicProperty {
  /// The name of the dynamic property. Possible values are `AlertLink`, `ConfidenceLevel`, `ConfidenceScore`, `ExtendedLinks`, `ProductComponentName`, `ProductName`, `ProviderName`, `RemediationSteps`, `SubTechniques` and `Techniques`.
  final String name;
  /// The value of the dynamic property. Pssible Values are `Caller`, `dcount_ResourceId` and `EventSubmissionTimestamp`.
  final String value;

  /// Creates a new [AlertRuleNrtAlertDetailsOverrideDynamicProperty].
  /// [name] The name of the dynamic property. Possible values are `AlertLink`, `ConfidenceLevel`, `ConfidenceScore`, `ExtendedLinks`, `ProductComponentName`, `ProductName`, `ProviderName`, `RemediationSteps`, `SubTechniques` and `Techniques`.
  /// [value] The value of the dynamic property. Pssible Values are `Caller`, `dcount_ResourceId` and `EventSubmissionTimestamp`.
  AlertRuleNrtAlertDetailsOverrideDynamicProperty({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory AlertRuleNrtAlertDetailsOverrideDynamicProperty.fromMap(Map<String, dynamic> map) {
    return AlertRuleNrtAlertDetailsOverrideDynamicProperty(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

