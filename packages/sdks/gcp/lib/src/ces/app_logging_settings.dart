// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_logging_settings_audio_recording_config.dart';
import 'app_logging_settings_bigquery_export_settings.dart';
import 'app_logging_settings_cloud_logging_settings.dart';
import 'app_logging_settings_conversation_logging_settings.dart';
import 'app_logging_settings_redaction_config.dart';

class AppLoggingSettings {
  /// Configuration for how the audio interactions should be recorded.
  /// Structure is documented below.
  final pulumi.Input<AppLoggingSettingsAudioRecordingConfig>? audioRecordingConfig;
  /// Settings to describe the BigQuery export behaviors for the app.
  /// Structure is documented below.
  final pulumi.Input<AppLoggingSettingsBigqueryExportSettings>? bigqueryExportSettings;
  /// Settings to describe the Cloud Logging behaviors for the app.
  /// Structure is documented below.
  final pulumi.Input<AppLoggingSettingsCloudLoggingSettings>? cloudLoggingSettings;
  /// Settings to describe the conversation logging behaviors for the app.
  /// Structure is documented below.
  final pulumi.Input<AppLoggingSettingsConversationLoggingSettings>? conversationLoggingSettings;
  /// Configuration to instruct how sensitive data should be handled.
  /// Structure is documented below.
  final pulumi.Input<AppLoggingSettingsRedactionConfig>? redactionConfig;

  /// Creates a new [AppLoggingSettings].
  /// [audioRecordingConfig] Configuration for how the audio interactions should be recorded.
  /// [bigqueryExportSettings] Settings to describe the BigQuery export behaviors for the app.
  /// [cloudLoggingSettings] Settings to describe the Cloud Logging behaviors for the app.
  /// [conversationLoggingSettings] Settings to describe the conversation logging behaviors for the app.
  /// [redactionConfig] Configuration to instruct how sensitive data should be handled.
  AppLoggingSettings({
    this.audioRecordingConfig,
    this.bigqueryExportSettings,
    this.cloudLoggingSettings,
    this.conversationLoggingSettings,
    this.redactionConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioRecordingConfig': ?pulumi.Input.mapOptionalInputValue<AppLoggingSettingsAudioRecordingConfig, Map<String, dynamic>>(audioRecordingConfig, (value) => value.toMap()),
      'bigqueryExportSettings': ?pulumi.Input.mapOptionalInputValue<AppLoggingSettingsBigqueryExportSettings, Map<String, dynamic>>(bigqueryExportSettings, (value) => value.toMap()),
      'cloudLoggingSettings': ?pulumi.Input.mapOptionalInputValue<AppLoggingSettingsCloudLoggingSettings, Map<String, dynamic>>(cloudLoggingSettings, (value) => value.toMap()),
      'conversationLoggingSettings': ?pulumi.Input.mapOptionalInputValue<AppLoggingSettingsConversationLoggingSettings, Map<String, dynamic>>(conversationLoggingSettings, (value) => value.toMap()),
      'redactionConfig': ?pulumi.Input.mapOptionalInputValue<AppLoggingSettingsRedactionConfig, Map<String, dynamic>>(redactionConfig, (value) => value.toMap()),
    };
  }

  factory AppLoggingSettings.fromMap(Map<String, dynamic> map) {
    return AppLoggingSettings(
      audioRecordingConfig: map['audioRecordingConfig'] == null ? null : (AppLoggingSettingsAudioRecordingConfig.fromMap((map['audioRecordingConfig'] as Map).cast<String, dynamic>())).input(),
      bigqueryExportSettings: map['bigqueryExportSettings'] == null ? null : (AppLoggingSettingsBigqueryExportSettings.fromMap((map['bigqueryExportSettings'] as Map).cast<String, dynamic>())).input(),
      cloudLoggingSettings: map['cloudLoggingSettings'] == null ? null : (AppLoggingSettingsCloudLoggingSettings.fromMap((map['cloudLoggingSettings'] as Map).cast<String, dynamic>())).input(),
      conversationLoggingSettings: map['conversationLoggingSettings'] == null ? null : (AppLoggingSettingsConversationLoggingSettings.fromMap((map['conversationLoggingSettings'] as Map).cast<String, dynamic>())).input(),
      redactionConfig: map['redactionConfig'] == null ? null : (AppLoggingSettingsRedactionConfig.fromMap((map['redactionConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

