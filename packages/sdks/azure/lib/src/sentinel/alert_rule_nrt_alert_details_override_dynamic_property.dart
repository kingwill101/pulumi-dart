// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertRuleNrtAlertDetailsOverrideDynamicProperty {
  /// The name of the dynamic property. Possible values are `AlertLink`, `ConfidenceLevel`, `ConfidenceScore`, `ExtendedLinks`, `ProductComponentName`, `ProductName`, `ProviderName`, `RemediationSteps`, `SubTechniques` and `Techniques`.
  final pulumi.Input<String> name;
  /// The value of the dynamic property. Pssible Values are `Caller`, `dcount_ResourceId` and `EventSubmissionTimestamp`.
  final pulumi.Input<String> value;

  /// Creates a new [AlertRuleNrtAlertDetailsOverrideDynamicProperty].
  /// [name] The name of the dynamic property. Possible values are `AlertLink`, `ConfidenceLevel`, `ConfidenceScore`, `ExtendedLinks`, `ProductComponentName`, `ProductName`, `ProviderName`, `RemediationSteps`, `SubTechniques` and `Techniques`.
  /// [value] The value of the dynamic property. Pssible Values are `Caller`, `dcount_ResourceId` and `EventSubmissionTimestamp`.
  const AlertRuleNrtAlertDetailsOverrideDynamicProperty({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

