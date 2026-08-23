// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppLoggingSettingsRedactionConfig {
  /// [DLP](https://cloud.google.com/dlp/docs) deidentify template name to
  /// instruct on how to de-identify content.
  /// Format:
  /// `projects/{project}/locations/{location}/deidentifyTemplates/{deidentify_template}`
  final pulumi.Input<String>? deidentifyTemplate;
  /// If true, redaction will be applied in various logging scenarios, including
  /// conversation history, Cloud Logging and audio recording.
  final pulumi.Input<bool>? enableRedaction;
  /// [DLP](https://cloud.google.com/dlp/docs) inspect template name to configure
  /// detection of sensitive data types.
  /// Format:
  /// `projects/{project}/locations/{location}/inspectTemplates/{inspect_template}`
  final pulumi.Input<String>? inspectTemplate;

  /// Creates a new [AppLoggingSettingsRedactionConfig].
  /// [deidentifyTemplate] [DLP](https://cloud.google.com/dlp/docs) deidentify template name to
  /// [enableRedaction] If true, redaction will be applied in various logging scenarios, including
  /// [inspectTemplate] [DLP](https://cloud.google.com/dlp/docs) inspect template name to configure
  const AppLoggingSettingsRedactionConfig({
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

  factory AppLoggingSettingsRedactionConfig.fromMap(Map<String, dynamic> map) {
    return AppLoggingSettingsRedactionConfig(
      deidentifyTemplate: (() { final guardedValue = map['deidentifyTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableRedaction: (() { final guardedValue = map['enableRedaction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      inspectTemplate: (() { final guardedValue = map['inspectTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
