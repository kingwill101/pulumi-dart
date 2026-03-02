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
    this.fallbackSettings,
    this.generativeSafetySettings,
    this.knowledgeConnectorSettings,
    this.languageCode,
    this.llmModelSettings,
    this.name,
    this.parent,
  });

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
      fallbackSettings: map['fallbackSettings'] == null ? null : (CxGenerativeSettingsFallbackSettings.fromMap((map['fallbackSettings']! as Map).cast<String, dynamic>())).input(),
      generativeSafetySettings: map['generativeSafetySettings'] == null ? null : (CxGenerativeSettingsGenerativeSafetySettings.fromMap((map['generativeSafetySettings']! as Map).cast<String, dynamic>())).input(),
      knowledgeConnectorSettings: map['knowledgeConnectorSettings'] == null ? null : (CxGenerativeSettingsKnowledgeConnectorSettings.fromMap((map['knowledgeConnectorSettings']! as Map).cast<String, dynamic>())).input(),
      languageCode: map['languageCode'] == null ? null : (map['languageCode']! as String).input(),
      llmModelSettings: map['llmModelSettings'] == null ? null : (CxGenerativeSettingsLlmModelSettings.fromMap((map['llmModelSettings']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parent: map['parent'] == null ? null : (map['parent']! as String).input(),
    );
  }
}

