// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAlertRuleTemplateSecurityIncidentTemplate {
  /// The description of this Sentinel Scheduled Alert Rule Template.
  final pulumi.Input<String> description;
  /// The Microsoft Security Service from where the alert will be generated.
  final pulumi.Input<String> productFilter;

  /// Creates a new [GetAlertRuleTemplateSecurityIncidentTemplate].
  /// [description] The description of this Sentinel Scheduled Alert Rule Template.
  /// [productFilter] The Microsoft Security Service from where the alert will be generated.
  const GetAlertRuleTemplateSecurityIncidentTemplate({
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
      description: pulumi.Input.fromValue(map['description'] as String),
      productFilter: pulumi.Input.fromValue(map['productFilter'] as String),
    );
  }
}

