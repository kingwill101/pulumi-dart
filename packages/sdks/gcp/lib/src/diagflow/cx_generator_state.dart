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
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? languageCode,
    pulumi.Output<CxGeneratorLlmModelSettings>? llmModelSettings,
    pulumi.Output<CxGeneratorModelParameter>? modelParameter,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<List<CxGeneratorPlaceholder>>? placeholders,
    pulumi.Output<CxGeneratorPromptText>? promptText,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
      llmModelSettings = pulumi.Input.asOptionalInput<CxGeneratorLlmModelSettings>(llmModelSettings),
      modelParameter = pulumi.Input.asOptionalInput<CxGeneratorModelParameter>(modelParameter),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      placeholders = pulumi.Input.asOptionalInput<List<CxGeneratorPlaceholder>>(placeholders),
      promptText = pulumi.Input.asOptionalInput<CxGeneratorPromptText>(promptText);

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
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      languageCode: map['languageCode'] == null ? null : pulumi.Output.create<String>(map['languageCode'] as String),
      llmModelSettings: map['llmModelSettings'] == null ? null : pulumi.Output.create<CxGeneratorLlmModelSettings>(CxGeneratorLlmModelSettings.fromMap((map['llmModelSettings'] as Map).cast<String, dynamic>())),
      modelParameter: map['modelParameter'] == null ? null : pulumi.Output.create<CxGeneratorModelParameter>(CxGeneratorModelParameter.fromMap((map['modelParameter'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      placeholders: map['placeholders'] == null ? null : pulumi.Output.create<List<CxGeneratorPlaceholder>>(pulumi.Input.decodeList<CxGeneratorPlaceholder>(map['placeholders'], (value) => CxGeneratorPlaceholder.fromMap((value as Map).cast<String, dynamic>()))),
      promptText: map['promptText'] == null ? null : pulumi.Output.create<CxGeneratorPromptText>(CxGeneratorPromptText.fromMap((map['promptText'] as Map).cast<String, dynamic>())),
    );
  }
}

