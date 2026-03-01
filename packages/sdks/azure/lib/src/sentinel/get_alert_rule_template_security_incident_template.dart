// ignore_for_file: unused_element, unnecessary_cast


class GetAlertRuleTemplateSecurityIncidentTemplate {
  /// The description of this Sentinel Scheduled Alert Rule Template.
  final String description;
  /// The Microsoft Security Service from where the alert will be generated.
  final String productFilter;

  /// Creates a new [GetAlertRuleTemplateSecurityIncidentTemplate].
  /// [description] The description of this Sentinel Scheduled Alert Rule Template.
  /// [productFilter] The Microsoft Security Service from where the alert will be generated.
  GetAlertRuleTemplateSecurityIncidentTemplate({
    required this.description,
    required this.productFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'productFilter': productFilter,
    };
  }

  factory GetAlertRuleTemplateSecurityIncidentTemplate.fromMap(Map<String, dynamic> map) {
    return GetAlertRuleTemplateSecurityIncidentTemplate(
      description: map['description'] as String,
      productFilter: map['productFilter'] as String,
    );
  }
}

