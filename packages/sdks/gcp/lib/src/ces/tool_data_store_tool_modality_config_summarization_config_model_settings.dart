// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolDataStoreToolModalityConfigSummarizationConfigModelSettings {
  /// The LLM model that the agent should use.
  /// If not set, the agent will inherit the model from its parent agent.
  final pulumi.Input<String?>? model;
  /// If set, this temperature will be used for the LLM model. Temperature
  /// controls the randomness of the model's responses. Lower temperatures
  /// produce responses that are more predictable. Higher temperatures produce
  /// responses that are more creative.
  final pulumi.Input<double?>? temperature;
  /// The thinking level of the model.
  /// Possible values:
  /// DEFAULT
  /// LOW
  /// MEDIUM
  /// HIGH
  /// Possible values are: `DEFAULT`, `LOW`, `MEDIUM`, `HIGH`.
  final pulumi.Input<String?>? thinkingLevel;

  /// Creates a new [ToolDataStoreToolModalityConfigSummarizationConfigModelSettings].
  /// [model] The LLM model that the agent should use.
  /// [temperature] If set, this temperature will be used for the LLM model. Temperature
  /// [thinkingLevel] The thinking level of the model.
  const ToolDataStoreToolModalityConfigSummarizationConfigModelSettings({
    this.model,
    this.temperature,
    this.thinkingLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'model': ?model,
      'temperature': ?temperature,
      'thinkingLevel': ?thinkingLevel,
    };
  }

  factory ToolDataStoreToolModalityConfigSummarizationConfigModelSettings.fromMap(Map<String, dynamic> map) {
    return ToolDataStoreToolModalityConfigSummarizationConfigModelSettings(
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      temperature: (() { final guardedValue = map['temperature']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      thinkingLevel: (() { final guardedValue = map['thinkingLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
