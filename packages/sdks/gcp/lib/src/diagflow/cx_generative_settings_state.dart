// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_generative_settings_fallback_settings.dart';
import 'cx_generative_settings_generative_safety_settings.dart';
import 'cx_generative_settings_knowledge_connector_settings.dart';
import 'cx_generative_settings_llm_model_settings.dart';

/// Input properties used for looking up and filtering CxGenerativeSettings resources.
class CxGenerativeSettingsState {
  /// Settings for Generative Fallback.
  /// Structure is documented below.
  final pulumi.Input<CxGenerativeSettingsFallbackSettings>? fallbackSettings;
  /// Settings for Generative Safety.
  /// Structure is documented below.
  final pulumi.Input<CxGenerativeSettingsGenerativeSafetySettings>? generativeSafetySettings;
  /// Settings for knowledge connector.
  /// Structure is documented below.
  final pulumi.Input<CxGenerativeSettingsKnowledgeConnectorSettings>? knowledgeConnectorSettings;
  /// Language for this settings.
  final pulumi.Input<String>? languageCode;
  /// LLM model settings.
  /// Structure is documented below.
  final pulumi.Input<CxGenerativeSettingsLlmModelSettings>? llmModelSettings;
  /// The unique identifier of the generativeSettings.
  /// Format: projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/generativeSettings.
  final pulumi.Input<String>? name;
  /// The agent to create a flow for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  final pulumi.Input<String>? parent;

  /// Creates a new [CxGenerativeSettingsState].
  /// [fallbackSettings] Settings for Generative Fallback.
  /// [generativeSafetySettings] Settings for Generative Safety.
  /// [knowledgeConnectorSettings] Settings for knowledge connector.
  /// [languageCode] Language for this settings.
  /// [llmModelSettings] LLM model settings.
  /// [name] The unique identifier of the generativeSettings.
  /// [parent] The agent to create a flow for.
  CxGenerativeSettingsState({
    pulumi.Output<CxGenerativeSettingsFallbackSettings>? fallbackSettings,
    pulumi.Output<CxGenerativeSettingsGenerativeSafetySettings>? generativeSafetySettings,
    pulumi.Output<CxGenerativeSettingsKnowledgeConnectorSettings>? knowledgeConnectorSettings,
    pulumi.Output<String>? languageCode,
    pulumi.Output<CxGenerativeSettingsLlmModelSettings>? llmModelSettings,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
  }) :
      fallbackSettings = pulumi.Input.asOptionalInput<CxGenerativeSettingsFallbackSettings>(fallbackSettings),
      generativeSafetySettings = pulumi.Input.asOptionalInput<CxGenerativeSettingsGenerativeSafetySettings>(generativeSafetySettings),
      knowledgeConnectorSettings = pulumi.Input.asOptionalInput<CxGenerativeSettingsKnowledgeConnectorSettings>(knowledgeConnectorSettings),
      languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
      llmModelSettings = pulumi.Input.asOptionalInput<CxGenerativeSettingsLlmModelSettings>(llmModelSettings),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fallbackSettings': ?pulumi.Input.mapOptionalInputValue<CxGenerativeSettingsFallbackSettings, Map<String, dynamic>>(fallbackSettings, (value) => value.toMap()),
      'generativeSafetySettings': ?pulumi.Input.mapOptionalInputValue<CxGenerativeSettingsGenerativeSafetySettings, Map<String, dynamic>>(generativeSafetySettings, (value) => value.toMap()),
      'knowledgeConnectorSettings': ?pulumi.Input.mapOptionalInputValue<CxGenerativeSettingsKnowledgeConnectorSettings, Map<String, dynamic>>(knowledgeConnectorSettings, (value) => value.toMap()),
      'languageCode': ?languageCode,
      'llmModelSettings': ?pulumi.Input.mapOptionalInputValue<CxGenerativeSettingsLlmModelSettings, Map<String, dynamic>>(llmModelSettings, (value) => value.toMap()),
      'name': ?name,
      'parent': ?parent,
    };
  }

  factory CxGenerativeSettingsState.fromMap(Map<String, dynamic> map) {
    return CxGenerativeSettingsState(
      fallbackSettings: map['fallbackSettings'] == null ? null : pulumi.Output.create<CxGenerativeSettingsFallbackSettings>(CxGenerativeSettingsFallbackSettings.fromMap((map['fallbackSettings'] as Map).cast<String, dynamic>())),
      generativeSafetySettings: map['generativeSafetySettings'] == null ? null : pulumi.Output.create<CxGenerativeSettingsGenerativeSafetySettings>(CxGenerativeSettingsGenerativeSafetySettings.fromMap((map['generativeSafetySettings'] as Map).cast<String, dynamic>())),
      knowledgeConnectorSettings: map['knowledgeConnectorSettings'] == null ? null : pulumi.Output.create<CxGenerativeSettingsKnowledgeConnectorSettings>(CxGenerativeSettingsKnowledgeConnectorSettings.fromMap((map['knowledgeConnectorSettings'] as Map).cast<String, dynamic>())),
      languageCode: map['languageCode'] == null ? null : pulumi.Output.create<String>(map['languageCode'] as String),
      llmModelSettings: map['llmModelSettings'] == null ? null : pulumi.Output.create<CxGenerativeSettingsLlmModelSettings>(CxGenerativeSettingsLlmModelSettings.fromMap((map['llmModelSettings'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
    );
  }
}

