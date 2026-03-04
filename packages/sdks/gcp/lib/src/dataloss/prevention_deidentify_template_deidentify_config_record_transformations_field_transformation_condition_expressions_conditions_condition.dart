// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_condition_expressions_conditions_condition_field.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_condition_expressions_conditions_condition_value.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditionsCondition {
  /// Field within the record this condition is evaluated against.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditionsConditionField
  >
  field;

  /// Operator used to compare the field or infoType to the value.
  /// Possible values are: `EQUAL_TO`, `NOT_EQUAL_TO`, `GREATER_THAN`, `LESS_THAN`, `GREATER_THAN_OR_EQUALS`, `LESS_THAN_OR_EQUALS`, `EXISTS`.
  final pulumi.Input<String> operator;

  /// Value to compare against. [Mandatory, except for EXISTS tests.]
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditionsConditionValue
  >?
  value;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditionsCondition].
  /// [field] Field within the record this condition is evaluated against.
  /// [operator] Operator used to compare the field or infoType to the value.
  /// [value] Value to compare against. [Mandatory, except for EXISTS tests.]
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditionsCondition({
    required this.field,
    required this.operator,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field':
          pulumi.Input.mapInputValue<
            PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditionsConditionField,
            Map<String, dynamic>
          >(field, (value) => value.toMap()),
      'operator': operator,
      'value':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditionsConditionValue,
            Map<String, dynamic>
          >(value, (value) => value.toMap()),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditionsCondition.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditionsCondition(
      field: pulumi.Input.fromValue(
        PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditionsConditionField.fromMap(
          (map['field']! as Map).cast<String, dynamic>(),
        ),
      ),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditionsConditionValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
