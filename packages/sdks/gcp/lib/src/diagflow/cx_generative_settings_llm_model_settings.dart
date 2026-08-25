// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxGenerativeSettingsLlmModelSettings {
  /// The selected LLM model.
  final pulumi.Input<String?>? model;
  /// The custom prompt to use.
  final pulumi.Input<String?>? promptText;

  /// Creates a new [CxGenerativeSettingsLlmModelSettings].
  /// [model] The selected LLM model.
  /// [promptText] The custom prompt to use.
  const CxGenerativeSettingsLlmModelSettings({
    this.model,
    this.promptText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'model': ?model,
      'promptText': ?promptText,
    };
  }

  factory CxGenerativeSettingsLlmModelSettings.fromMap(Map<String, dynamic> map) {
    return CxGenerativeSettingsLlmModelSettings(
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      promptText: (() { final guardedValue = map['promptText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
