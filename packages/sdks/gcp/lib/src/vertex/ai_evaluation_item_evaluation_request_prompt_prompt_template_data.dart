// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiEvaluationItemEvaluationRequestPromptPromptTemplateData {
  /// The values for fields in the prompt template, as a JSON string mapping
  /// field names to Content objects.
  final pulumi.Input<String?>? values;

  /// Creates a new [AiEvaluationItemEvaluationRequestPromptPromptTemplateData].
  /// [values] The values for fields in the prompt template, as a JSON string mapping
  const AiEvaluationItemEvaluationRequestPromptPromptTemplateData({
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': ?values,
    };
  }

  factory AiEvaluationItemEvaluationRequestPromptPromptTemplateData.fromMap(Map<String, dynamic> map) {
    return AiEvaluationItemEvaluationRequestPromptPromptTemplateData(
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
