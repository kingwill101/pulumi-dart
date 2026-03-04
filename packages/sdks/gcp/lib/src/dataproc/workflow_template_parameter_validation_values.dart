// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplateParameterValidationValues {
  /// Required. List of allowed values for the parameter.
  final pulumi.Input<List<String>> values;

  /// Creates a new [WorkflowTemplateParameterValidationValues].
  /// [values] Required. List of allowed values for the parameter.
  WorkflowTemplateParameterValidationValues({required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'values': values};
  }

  factory WorkflowTemplateParameterValidationValues.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkflowTemplateParameterValidationValues(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
