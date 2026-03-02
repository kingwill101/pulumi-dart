// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_generator_llm_model_settings.dart';
import 'cx_generator_model_parameter.dart';
import 'cx_generator_placeholder.dart';
import 'cx_generator_prompt_text.dart';

/// Input properties used for looking up and filtering CxGenerator resources.
class CxGeneratorState {
  /// The human-readable name of the generator, unique within the agent.
  final pulumi.Input<String>? displayName;
  /// The language to create generators for the following fields:
  /// * Generator.prompt_text.text
  /// If not specified, the agent's default language is used.
  final pulumi.Input<String>? languageCode;
  /// The LLM model settings.
  /// Structure is documented below.
  final pulumi.Input<CxGeneratorLlmModelSettings>? llmModelSettings;
  /// Parameters passed to the LLM to configure its behavior.
  /// Structure is documented below.
  final pulumi.Input<CxGeneratorModelParameter>? modelParameter;
  /// The unique identifier of the Generator.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/generators/<Generator ID>.
  final pulumi.Input<String>? name;
  /// The agent to create a Generator for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  final pulumi.Input<String>? parent;
  /// List of custom placeholders in the prompt text.
  /// Structure is documented below.
  final pulumi.Input<List<CxGeneratorPlaceholder>>? placeholders;
  /// Prompt for the LLM model.
  /// Structure is documented below.
  final pulumi.Input<CxGeneratorPromptText>? promptText;

  /// Creates a new [CxGeneratorState].
  /// [displayName] The human-readable name of the generator, unique within the agent.
  /// [languageCode] The language to create generators for the following fields:
  /// [llmModelSettings] The LLM model settings.
  /// [modelParameter] Parameters passed to the LLM to configure its behavior.
  /// [name] The unique identifier of the Generator.
  /// [parent] The agent to create a Generator for.
  /// [placeholders] List of custom placeholders in the prompt text.
  /// [promptText] Prompt for the LLM model.
  CxGeneratorState({
    this.displayName,
    this.languageCode,
    this.llmModelSettings,
    this.modelParameter,
    this.name,
    this.parent,
    this.placeholders,
    this.promptText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'languageCode': ?languageCode,
      'llmModelSettings': ?pulumi.Input.mapOptionalInputValue<CxGeneratorLlmModelSettings, Map<String, dynamic>>(llmModelSettings, (value) => value.toMap()),
      'modelParameter': ?pulumi.Input.mapOptionalInputValue<CxGeneratorModelParameter, Map<String, dynamic>>(modelParameter, (value) => value.toMap()),
      'name': ?name,
      'parent': ?parent,
      'placeholders': ?pulumi.Input.mapOptionalInputValue<List<CxGeneratorPlaceholder>, List<Map<String, dynamic>>>(placeholders, (value) => pulumi.Input.encodeList<CxGeneratorPlaceholder, Map<String, dynamic>>(value, (value) => value.toMap())),
      'promptText': ?pulumi.Input.mapOptionalInputValue<CxGeneratorPromptText, Map<String, dynamic>>(promptText, (value) => value.toMap()),
    };
  }

  factory CxGeneratorState.fromMap(Map<String, dynamic> map) {
    return CxGeneratorState(
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      languageCode: map['languageCode'] == null ? null : (map['languageCode'] as String).input(),
      llmModelSettings: map['llmModelSettings'] == null ? null : (CxGeneratorLlmModelSettings.fromMap((map['llmModelSettings'] as Map).cast<String, dynamic>())).input(),
      modelParameter: map['modelParameter'] == null ? null : (CxGeneratorModelParameter.fromMap((map['modelParameter'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parent: map['parent'] == null ? null : (map['parent'] as String).input(),
      placeholders: map['placeholders'] == null ? null : (pulumi.Input.decodeList<CxGeneratorPlaceholder>(map['placeholders'], (value) => CxGeneratorPlaceholder.fromMap((value as Map).cast<String, dynamic>()))).input(),
      promptText: map['promptText'] == null ? null : (CxGeneratorPromptText.fromMap((map['promptText'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

