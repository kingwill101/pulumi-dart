// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotGuardrailLlmPromptSecurityDefaultSetting {
  /// (Output)
  /// The default prompt template used by the system.
  /// This field is for display purposes to show the user what prompt
  /// the system uses by default. It is OUTPUT_ONLY.
  final pulumi.Input<String>? defaultPromptTemplate;

  /// Creates a new [AppVersionSnapshotGuardrailLlmPromptSecurityDefaultSetting].
  /// [defaultPromptTemplate] (Output)
  const AppVersionSnapshotGuardrailLlmPromptSecurityDefaultSetting({
    this.defaultPromptTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultPromptTemplate': ?defaultPromptTemplate,
    };
  }

  factory AppVersionSnapshotGuardrailLlmPromptSecurityDefaultSetting.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotGuardrailLlmPromptSecurityDefaultSetting(
      defaultPromptTemplate: (() { final guardedValue = map['defaultPromptTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

