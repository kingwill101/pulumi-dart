// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_template_parameter_validation_regex.dart';
import 'workflow_template_parameter_validation_values.dart';

class WorkflowTemplateParameterValidation {
  /// Validation based on regular expressions.
  final pulumi.Input<WorkflowTemplateParameterValidationRegex?>? regex;
  /// Validation based on a list of allowed values.
  final pulumi.Input<WorkflowTemplateParameterValidationValues?>? values;

  /// Creates a new [WorkflowTemplateParameterValidation].
  /// [regex] Validation based on regular expressions.
  /// [values] Validation based on a list of allowed values.
  const WorkflowTemplateParameterValidation({
    this.regex,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regex': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplateParameterValidationRegex, Map<String, dynamic>>(regex, (value) => value.toMap()),
      'values': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplateParameterValidationValues, Map<String, dynamic>>(values, (value) => value.toMap()),
    };
  }

  factory WorkflowTemplateParameterValidation.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateParameterValidation(
      regex: (() { final guardedValue = map['regex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplateParameterValidationRegex.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplateParameterValidationValues.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
