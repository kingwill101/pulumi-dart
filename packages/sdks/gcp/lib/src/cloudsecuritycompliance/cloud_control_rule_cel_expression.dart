// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_control_rule_cel_expression_resource_types_values.dart';

class CloudControlRuleCelExpression {
  /// Logic expression in CEL language.
  /// The max length of the condition is 1000 characters.
  final pulumi.Input<String> expression;
  /// A list of strings.
  /// Structure is documented below.
  final pulumi.Input<CloudControlRuleCelExpressionResourceTypesValues>? resourceTypesValues;

  /// Creates a new [CloudControlRuleCelExpression].
  /// [expression] Logic expression in CEL language.
  /// [resourceTypesValues] A list of strings.
  CloudControlRuleCelExpression({
    required this.expression,
    this.resourceTypesValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': expression,
      'resourceTypesValues': ?pulumi.Input.mapOptionalInputValue<CloudControlRuleCelExpressionResourceTypesValues, Map<String, dynamic>>(resourceTypesValues, (value) => value.toMap()),
    };
  }

  factory CloudControlRuleCelExpression.fromMap(Map<String, dynamic> map) {
    return CloudControlRuleCelExpression(
      expression: (map['expression'] as String).input(),
      resourceTypesValues: map['resourceTypesValues'] == null ? null : (CloudControlRuleCelExpressionResourceTypesValues.fromMap((map['resourceTypesValues'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

