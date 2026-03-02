// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxGeneratorLlmModelSettings {
  /// The selected LLM model.
  final pulumi.Input<String>? model;
  /// The custom prompt to use.
  final pulumi.Input<String>? promptText;

  /// Creates a new [CxGeneratorLlmModelSettings].
  /// [model] The selected LLM model.
  /// [promptText] The custom prompt to use.
  CxGeneratorLlmModelSettings({
    this.model,
    this.promptText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'model': ?model,
      'promptText': ?promptText,
    };
  }

  factory CxGeneratorLlmModelSettings.fromMap(Map<String, dynamic> map) {
    return CxGeneratorLlmModelSettings(
      model: map['model'] == null ? null : (map['model'] as String).input(),
      promptText: map['promptText'] == null ? null : (map['promptText'] as String).input(),
    );
  }
}

