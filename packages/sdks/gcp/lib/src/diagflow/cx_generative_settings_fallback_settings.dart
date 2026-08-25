// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_generative_settings_fallback_settings_prompt_template.dart';

class CxGenerativeSettingsFallbackSettings {
  /// Stored prompts that can be selected, for example default templates like "conservative" or "chatty", or user defined ones.
  /// Structure is documented below.
  final pulumi.Input<List<CxGenerativeSettingsFallbackSettingsPromptTemplate>?>? promptTemplates;
  /// Display name of the selected prompt.
  final pulumi.Input<String?>? selectedPrompt;

  /// Creates a new [CxGenerativeSettingsFallbackSettings].
  /// [promptTemplates] Stored prompts that can be selected, for example default templates like "conservative" or "chatty", or user defined ones.
  /// [selectedPrompt] Display name of the selected prompt.
  const CxGenerativeSettingsFallbackSettings({
    this.promptTemplates,
    this.selectedPrompt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'promptTemplates': ?pulumi.Input.mapOptionalInputValue<List<CxGenerativeSettingsFallbackSettingsPromptTemplate>, List<Map<String, dynamic>>>(promptTemplates, (value) => pulumi.Input.encodeList<CxGenerativeSettingsFallbackSettingsPromptTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selectedPrompt': ?selectedPrompt,
    };
  }

  factory CxGenerativeSettingsFallbackSettings.fromMap(Map<String, dynamic> map) {
    return CxGenerativeSettingsFallbackSettings(
      promptTemplates: (() { final guardedValue = map['promptTemplates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CxGenerativeSettingsFallbackSettingsPromptTemplate>(guardedValue, (value) => CxGenerativeSettingsFallbackSettingsPromptTemplate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      selectedPrompt: (() { final guardedValue = map['selectedPrompt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
