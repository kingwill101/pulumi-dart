// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'posture_policy_set_policy_constraint_security_health_analytics_custom_module_config_custom_output_property_value_expression.dart';

class PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputProperty {
  /// Name of the property for the custom output.
  final pulumi.Input<String> name;

  /// The CEL expression for the custom output. A resource property can be
  /// specified to return the value of the property or a text string enclosed
  /// in quotation marks.
  /// Structure is documented below.
  final pulumi.Input<
    PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputPropertyValueExpression
  >?
  valueExpression;

  /// Creates a new [PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputProperty].
  /// [name] Name of the property for the custom output.
  /// [valueExpression] The CEL expression for the custom output. A resource property can be
  PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputProperty({
    required this.name,
    this.valueExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'valueExpression':
          ?pulumi.Input.mapOptionalInputValue<
            PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputPropertyValueExpression,
            Map<String, dynamic>
          >(valueExpression, (value) => value.toMap()),
    };
  }

  factory PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputProperty.fromMap(
    Map<String, dynamic> map,
  ) {
    return PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputProperty(
      name: pulumi.Input.fromValue(map['name'] as String),
      valueExpression: (() {
        final guardedValue = map['valueExpression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputPropertyValueExpression.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
