// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_control_rule_cel_expression.dart';

class CloudControlRule {
  /// A [CEL
  /// expression](https://cloud.google.com/certificate-authority-service/docs/using-cel).
  /// Structure is documented below.
  final pulumi.Input<CloudControlRuleCelExpression>? celExpression;
  /// Description of the Rule. The maximum length is 2000 characters.
  final pulumi.Input<String>? description;
  /// The functionality enabled by the Rule.
  final pulumi.Input<List<String>> ruleActionTypes;

  /// Creates a new [CloudControlRule].
  /// [celExpression] A [CEL
  /// [description] Description of the Rule. The maximum length is 2000 characters.
  /// [ruleActionTypes] The functionality enabled by the Rule.
  const CloudControlRule({
    this.celExpression,
    this.description,
    required this.ruleActionTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'celExpression': ?pulumi.Input.mapOptionalInputValue<CloudControlRuleCelExpression, Map<String, dynamic>>(celExpression, (value) => value.toMap()),
      'description': ?description,
      'ruleActionTypes': ruleActionTypes,
    };
  }

  factory CloudControlRule.fromMap(Map<String, dynamic> map) {
    return CloudControlRule(
      celExpression: (() { final guardedValue = map['celExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudControlRuleCelExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleActionTypes: pulumi.Input.fromValue((map['ruleActionTypes'] as List).cast<String>()),
    );
  }
}
