// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolGoogleSearchToolPromptConfig {
  /// Optional. Defines the prompt used for the system instructions when interacting with the
  /// agent in chat conversations. If not set, default prompt will be used.
  final pulumi.Input<String>? textPrompt;
  /// Optional. Defines the prompt used for the system instructions when interacting with the
  /// agent in voice conversations. If not set, default prompt will be used.
  final pulumi.Input<String>? voicePrompt;

  /// Creates a new [ToolGoogleSearchToolPromptConfig].
  /// [textPrompt] Optional. Defines the prompt used for the system instructions when interacting with the
  /// [voicePrompt] Optional. Defines the prompt used for the system instructions when interacting with the
  const ToolGoogleSearchToolPromptConfig({
    this.textPrompt,
    this.voicePrompt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'textPrompt': ?textPrompt,
      'voicePrompt': ?voicePrompt,
    };
  }

  factory ToolGoogleSearchToolPromptConfig.fromMap(Map<String, dynamic> map) {
    return ToolGoogleSearchToolPromptConfig(
      textPrompt: (() { final guardedValue = map['textPrompt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      voicePrompt: (() { final guardedValue = map['voicePrompt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
