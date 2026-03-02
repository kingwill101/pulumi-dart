// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotAppLoggingSettingRedactionConfig {
  /// (Output)
  /// [DLP](https://cloud.google.com/dlp/docs) deidentify template name to
  /// instruct on how to de-identify content.
  /// Format:
  /// `projects/{project}/locations/{location}/deidentifyTemplates/{deidentify_template}`
  final pulumi.Input<String>? deidentifyTemplate;
  /// (Output)
  /// If true, redaction will be applied in various logging scenarios, including
  /// conversation history, Cloud Logging and audio recording.
  final pulumi.Input<bool>? enableRedaction;
  /// (Output)
  /// [DLP](https://cloud.google.com/dlp/docs) inspect template name to configure
  /// detection of sensitive data types.
  /// Format:
  /// `projects/{project}/locations/{location}/inspectTemplates/{inspect_template}`
  final pulumi.Input<String>? inspectTemplate;

  /// Creates a new [AppVersionSnapshotAppLoggingSettingRedactionConfig].
  /// [deidentifyTemplate] (Output)
  /// [enableRedaction] (Output)
  /// [inspectTemplate] (Output)
  AppVersionSnapshotAppLoggingSettingRedactionConfig({
    this.deidentifyTemplate,
    this.enableRedaction,
    this.inspectTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deidentifyTemplate': ?deidentifyTemplate,
      'enableRedaction': ?enableRedaction,
      'inspectTemplate': ?inspectTemplate,
    };
  }

  factory AppVersionSnapshotAppLoggingSettingRedactionConfig.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppLoggingSettingRedactionConfig(
      deidentifyTemplate: map['deidentifyTemplate'] == null ? null : (map['deidentifyTemplate'] as String).input(),
      enableRedaction: map['enableRedaction'] == null ? null : (map['enableRedaction'] as bool).input(),
      inspectTemplate: map['inspectTemplate'] == null ? null : (map['inspectTemplate'] as String).input(),
    );
  }
}

