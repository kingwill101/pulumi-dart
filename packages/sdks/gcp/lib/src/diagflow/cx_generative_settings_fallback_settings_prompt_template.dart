// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxGenerativeSettingsFallbackSettingsPromptTemplate {
  /// Prompt name.
  final pulumi.Input<String>? displayName;
  /// If the flag is true, the prompt is frozen and cannot be modified by users.
  final pulumi.Input<bool>? frozen;
  /// Prompt text that is sent to a LLM on no-match default, placeholders are filled downstream. For example: "Here is a conversation $conversation, a response is: "
  final pulumi.Input<String>? promptText;

  /// Creates a new [CxGenerativeSettingsFallbackSettingsPromptTemplate].
  /// [displayName] Prompt name.
  /// [frozen] If the flag is true, the prompt is frozen and cannot be modified by users.
  /// [promptText] Prompt text that is sent to a LLM on no-match default, placeholders are filled downstream. For example: "Here is a conversation $conversation, a response is: "
  CxGenerativeSettingsFallbackSettingsPromptTemplate({
    this.displayName,
    this.frozen,
    this.promptText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'frozen': ?frozen,
      'promptText': ?promptText,
    };
  }

  factory CxGenerativeSettingsFallbackSettingsPromptTemplate.fromMap(Map<String, dynamic> map) {
    return CxGenerativeSettingsFallbackSettingsPromptTemplate(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frozen: (() { final guardedValue = map['frozen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      promptText: (() { final guardedValue = map['promptText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

