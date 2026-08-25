// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_app_logging_setting_audio_recording_config.dart';
import 'app_version_snapshot_app_logging_setting_bigquery_export_setting.dart';
import 'app_version_snapshot_app_logging_setting_cloud_logging_setting.dart';
import 'app_version_snapshot_app_logging_setting_conversation_logging_setting.dart';
import 'app_version_snapshot_app_logging_setting_redaction_config.dart';

class AppVersionSnapshotAppLoggingSetting {
  /// (Output)
  /// Configuration for how the audio interactions should be recorded.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppLoggingSettingAudioRecordingConfig>?>? audioRecordingConfigs;
  /// (Output)
  /// Settings to describe the BigQuery export behaviors for the app.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppLoggingSettingBigqueryExportSetting>?>? bigqueryExportSettings;
  /// (Output)
  /// Settings to describe the Cloud Logging behaviors for the app.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppLoggingSettingCloudLoggingSetting>?>? cloudLoggingSettings;
  /// (Output)
  /// Settings to describe the conversation logging behaviors for the app.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppLoggingSettingConversationLoggingSetting>?>? conversationLoggingSettings;
  /// (Output)
  /// Configuration to instruct how sensitive data should be handled.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppLoggingSettingRedactionConfig>?>? redactionConfigs;

  /// Creates a new [AppVersionSnapshotAppLoggingSetting].
  /// [audioRecordingConfigs] (Output)
  /// [bigqueryExportSettings] (Output)
  /// [cloudLoggingSettings] (Output)
  /// [conversationLoggingSettings] (Output)
  /// [redactionConfigs] (Output)
  const AppVersionSnapshotAppLoggingSetting({
    this.audioRecordingConfigs,
    this.bigqueryExportSettings,
    this.cloudLoggingSettings,
    this.conversationLoggingSettings,
    this.redactionConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioRecordingConfigs': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppLoggingSettingAudioRecordingConfig>, List<Map<String, dynamic>>>(audioRecordingConfigs, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppLoggingSettingAudioRecordingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bigqueryExportSettings': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppLoggingSettingBigqueryExportSetting>, List<Map<String, dynamic>>>(bigqueryExportSettings, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppLoggingSettingBigqueryExportSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cloudLoggingSettings': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppLoggingSettingCloudLoggingSetting>, List<Map<String, dynamic>>>(cloudLoggingSettings, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppLoggingSettingCloudLoggingSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'conversationLoggingSettings': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppLoggingSettingConversationLoggingSetting>, List<Map<String, dynamic>>>(conversationLoggingSettings, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppLoggingSettingConversationLoggingSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'redactionConfigs': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppLoggingSettingRedactionConfig>, List<Map<String, dynamic>>>(redactionConfigs, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppLoggingSettingRedactionConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppVersionSnapshotAppLoggingSetting.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppLoggingSetting(
      audioRecordingConfigs: (() { final guardedValue = map['audioRecordingConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAppLoggingSettingAudioRecordingConfig>(guardedValue, (value) => AppVersionSnapshotAppLoggingSettingAudioRecordingConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bigqueryExportSettings: (() { final guardedValue = map['bigqueryExportSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAppLoggingSettingBigqueryExportSetting>(guardedValue, (value) => AppVersionSnapshotAppLoggingSettingBigqueryExportSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cloudLoggingSettings: (() { final guardedValue = map['cloudLoggingSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAppLoggingSettingCloudLoggingSetting>(guardedValue, (value) => AppVersionSnapshotAppLoggingSettingCloudLoggingSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      conversationLoggingSettings: (() { final guardedValue = map['conversationLoggingSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAppLoggingSettingConversationLoggingSetting>(guardedValue, (value) => AppVersionSnapshotAppLoggingSettingConversationLoggingSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      redactionConfigs: (() { final guardedValue = map['redactionConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAppLoggingSettingRedactionConfig>(guardedValue, (value) => AppVersionSnapshotAppLoggingSettingRedactionConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
