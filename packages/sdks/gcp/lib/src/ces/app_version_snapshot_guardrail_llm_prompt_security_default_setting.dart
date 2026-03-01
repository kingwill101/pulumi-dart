// ignore_for_file: unused_element, unnecessary_cast


class AppVersionSnapshotGuardrailLlmPromptSecurityDefaultSetting {
  /// (Output)
  /// The default prompt template used by the system.
  /// This field is for display purposes to show the user what prompt
  /// the system uses by default. It is OUTPUT_ONLY.
  final String? defaultPromptTemplate;

  /// Creates a new [AppVersionSnapshotGuardrailLlmPromptSecurityDefaultSetting].
  /// [defaultPromptTemplate] (Output)
  AppVersionSnapshotGuardrailLlmPromptSecurityDefaultSetting({
    this.defaultPromptTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultPromptTemplate': ?defaultPromptTemplate,
    };
  }

  factory AppVersionSnapshotGuardrailLlmPromptSecurityDefaultSetting.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotGuardrailLlmPromptSecurityDefaultSetting(
      defaultPromptTemplate: map['defaultPromptTemplate'] == null ? null : map['defaultPromptTemplate'] as String,
    );
  }
}

