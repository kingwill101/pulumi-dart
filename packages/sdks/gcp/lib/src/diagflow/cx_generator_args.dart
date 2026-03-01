// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_generator_llm_model_settings.dart';
import 'cx_generator_model_parameter.dart';
import 'cx_generator_placeholder.dart';
import 'cx_generator_prompt_text.dart';

/// {@template pulumi_diagflow_cx_generator_cx_generator_args_doc}
/// The set of arguments for CxGenerator.
/// {@endtemplate}
/// {@macro pulumi_diagflow_cx_generator_cx_generator_args_doc}
class CxGeneratorArgs {
  /// The human-readable name of the generator, unique within the agent.
  final pulumi.Input<String> displayName;
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
  /// The agent to create a Generator for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  final pulumi.Input<String>? parent;
  /// List of custom placeholders in the prompt text.
  /// Structure is documented below.
  final pulumi.Input<List<CxGeneratorPlaceholder>>? placeholders;
  /// Prompt for the LLM model.
  /// Structure is documented below.
  final pulumi.Input<CxGeneratorPromptText> promptText;

  /// Creates a new [CxGeneratorArgs].
  /// [displayName] The human-readable name of the generator, unique within the agent.
  /// [languageCode] The language to create generators for the following fields:
  /// [llmModelSettings] The LLM model settings.
  /// [modelParameter] Parameters passed to the LLM to configure its behavior.
  /// [parent] The agent to create a Generator for.
  /// [placeholders] List of custom placeholders in the prompt text.
  /// [promptText] Prompt for the LLM model.
  CxGeneratorArgs({
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? languageCode,
    pulumi.Output<CxGeneratorLlmModelSettings>? llmModelSettings,
    pulumi.Output<CxGeneratorModelParameter>? modelParameter,
    pulumi.Output<String>? parent,
    pulumi.Output<List<CxGeneratorPlaceholder>>? placeholders,
    required pulumi.Output<CxGeneratorPromptText> promptText,
  }) :
      displayName = pulumi.Input.asInput<String>(displayName),
      languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
      llmModelSettings = pulumi.Input.asOptionalInput<CxGeneratorLlmModelSettings>(llmModelSettings),
      modelParameter = pulumi.Input.asOptionalInput<CxGeneratorModelParameter>(modelParameter),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      placeholders = pulumi.Input.asOptionalInput<List<CxGeneratorPlaceholder>>(placeholders),
      promptText = pulumi.Input.asInput<CxGeneratorPromptText>(promptText);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'languageCode': ?languageCode,
      'llmModelSettings': ?pulumi.Input.mapOptionalInputValue<CxGeneratorLlmModelSettings, Map<String, dynamic>>(llmModelSettings, (value) => value.toMap()),
      'modelParameter': ?pulumi.Input.mapOptionalInputValue<CxGeneratorModelParameter, Map<String, dynamic>>(modelParameter, (value) => value.toMap()),
      'parent': ?parent,
      'placeholders': ?pulumi.Input.mapOptionalInputValue<List<CxGeneratorPlaceholder>, List<Map<String, dynamic>>>(placeholders, (value) => pulumi.Input.encodeList<CxGeneratorPlaceholder, Map<String, dynamic>>(value, (value) => value.toMap())),
      'promptText': pulumi.Input.mapInputValue<CxGeneratorPromptText, Map<String, dynamic>>(promptText, (value) => value.toMap()),
    };
  }

  factory CxGeneratorArgs.fromMap(Map<String, dynamic> map) {
    return CxGeneratorArgs(
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      languageCode: map['languageCode'] == null ? null : pulumi.Output.create<String>(map['languageCode'] as String),
      llmModelSettings: map['llmModelSettings'] == null ? null : pulumi.Output.create<CxGeneratorLlmModelSettings>(CxGeneratorLlmModelSettings.fromMap((map['llmModelSettings'] as Map).cast<String, dynamic>())),
      modelParameter: map['modelParameter'] == null ? null : pulumi.Output.create<CxGeneratorModelParameter>(CxGeneratorModelParameter.fromMap((map['modelParameter'] as Map).cast<String, dynamic>())),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      placeholders: map['placeholders'] == null ? null : pulumi.Output.create<List<CxGeneratorPlaceholder>>(pulumi.Input.decodeList<CxGeneratorPlaceholder>(map['placeholders'], (value) => CxGeneratorPlaceholder.fromMap((value as Map).cast<String, dynamic>()))),
      promptText: pulumi.Output.create<CxGeneratorPromptText>(CxGeneratorPromptText.fromMap((map['promptText'] as Map).cast<String, dynamic>())),
    );
  }
}

