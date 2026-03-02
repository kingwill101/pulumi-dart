// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_generative_settings_fallback_settings.dart';
import 'cx_generative_settings_generative_safety_settings.dart';
import 'cx_generative_settings_knowledge_connector_settings.dart';
import 'cx_generative_settings_llm_model_settings.dart';

/// {@template pulumi_diagflow_cx_generative_settings_cx_generative_settings_args_doc}
/// The set of arguments for CxGenerativeSettings.
/// {@endtemplate}
/// {@macro pulumi_diagflow_cx_generative_settings_cx_generative_settings_args_doc}
class CxGenerativeSettingsArgs {
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
  final pulumi.Input<String> languageCode;
  /// LLM model settings.
  /// Structure is documented below.
  final pulumi.Input<CxGenerativeSettingsLlmModelSettings>? llmModelSettings;
  /// The agent to create a flow for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  final pulumi.Input<String>? parent;

  /// Creates a new [CxGenerativeSettingsArgs].
  /// [fallbackSettings] Settings for Generative Fallback.
  /// [generativeSafetySettings] Settings for Generative Safety.
  /// [knowledgeConnectorSettings] Settings for knowledge connector.
  /// [languageCode] Language for this settings.
  /// [llmModelSettings] LLM model settings.
  /// [parent] The agent to create a flow for.
  CxGenerativeSettingsArgs({
    this.fallbackSettings,
    this.generativeSafetySettings,
    this.knowledgeConnectorSettings,
    required this.languageCode,
    this.llmModelSettings,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fallbackSettings': ?pulumi.Input.mapOptionalInputValue<CxGenerativeSettingsFallbackSettings, Map<String, dynamic>>(fallbackSettings, (value) => value.toMap()),
      'generativeSafetySettings': ?pulumi.Input.mapOptionalInputValue<CxGenerativeSettingsGenerativeSafetySettings, Map<String, dynamic>>(generativeSafetySettings, (value) => value.toMap()),
      'knowledgeConnectorSettings': ?pulumi.Input.mapOptionalInputValue<CxGenerativeSettingsKnowledgeConnectorSettings, Map<String, dynamic>>(knowledgeConnectorSettings, (value) => value.toMap()),
      'languageCode': languageCode,
      'llmModelSettings': ?pulumi.Input.mapOptionalInputValue<CxGenerativeSettingsLlmModelSettings, Map<String, dynamic>>(llmModelSettings, (value) => value.toMap()),
      'parent': ?parent,
    };
  }

  factory CxGenerativeSettingsArgs.fromMap(Map<String, dynamic> map) {
    return CxGenerativeSettingsArgs(
      fallbackSettings: map['fallbackSettings'] == null ? null : (CxGenerativeSettingsFallbackSettings.fromMap((map['fallbackSettings'] as Map).cast<String, dynamic>())).input(),
      generativeSafetySettings: map['generativeSafetySettings'] == null ? null : (CxGenerativeSettingsGenerativeSafetySettings.fromMap((map['generativeSafetySettings'] as Map).cast<String, dynamic>())).input(),
      knowledgeConnectorSettings: map['knowledgeConnectorSettings'] == null ? null : (CxGenerativeSettingsKnowledgeConnectorSettings.fromMap((map['knowledgeConnectorSettings'] as Map).cast<String, dynamic>())).input(),
      languageCode: (map['languageCode'] as String).input(),
      llmModelSettings: map['llmModelSettings'] == null ? null : (CxGenerativeSettingsLlmModelSettings.fromMap((map['llmModelSettings'] as Map).cast<String, dynamic>())).input(),
      parent: map['parent'] == null ? null : (map['parent'] as String).input(),
    );
  }
}

