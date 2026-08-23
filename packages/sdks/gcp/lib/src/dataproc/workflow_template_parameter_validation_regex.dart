// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplateParameterValidationRegex {
  /// Required. RE2 regular expressions used to validate the parameter's value. The value must match the regex in its entirety (substring matches are not sufficient).
  final pulumi.Input<List<String>> regexes;

  /// Creates a new [WorkflowTemplateParameterValidationRegex].
  /// [regexes] Required. RE2 regular expressions used to validate the parameter's value. The value must match the regex in its entirety (substring matches are not sufficient).
  const WorkflowTemplateParameterValidationRegex({
    required this.regexes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regexes': regexes,
    };
  }

  factory WorkflowTemplateParameterValidationRegex.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateParameterValidationRegex(
      regexes: pulumi.Input.fromValue((map['regexes'] as List).cast<String>()),
    );
  }
}
