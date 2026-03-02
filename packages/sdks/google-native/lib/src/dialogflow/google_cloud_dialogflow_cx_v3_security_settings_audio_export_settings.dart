// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_security_settings_audio_export_settings_audio_format.dart';

/// Settings for exporting audio.
class GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings {
  /// Filename pattern for exported audio.
  final pulumi.Input<String>? audioExportPattern;
  /// File format for exported audio file. Currently only in telephony recordings.
  final pulumi.Input<GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettingsAudioFormat>? audioFormat;
  /// Enable audio redaction if it is true.
  final pulumi.Input<bool>? enableAudioRedaction;
  /// Cloud Storage bucket to export audio record to. Setting this field would grant the Storage Object Creator role to the Dialogflow Service Agent. API caller that tries to modify this field should have the permission of storage.buckets.setIamPolicy.
  final pulumi.Input<String>? gcsBucket;

  /// Creates a new [GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings].
  /// [audioExportPattern] Filename pattern for exported audio.
  /// [audioFormat] File format for exported audio file. Currently only in telephony recordings.
  /// [enableAudioRedaction] Enable audio redaction if it is true.
  /// [gcsBucket] Cloud Storage bucket to export audio record to. Setting this field would grant the Storage Object Creator role to the Dialogflow Service Agent. API caller that tries to modify this field should have the permission of storage.buckets.setIamPolicy.
  GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings({
    this.audioExportPattern,
    this.audioFormat,
    this.enableAudioRedaction,
    this.gcsBucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioExportPattern': ?audioExportPattern,
      'audioFormat': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettingsAudioFormat, String>(audioFormat, (value) => value.value),
      'enableAudioRedaction': ?enableAudioRedaction,
      'gcsBucket': ?gcsBucket,
    };
  }

  factory GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings(
      audioExportPattern: map['audioExportPattern'] == null ? null : (map['audioExportPattern']! as String).input(),
      audioFormat: map['audioFormat'] == null ? null : (GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettingsAudioFormat.fromValue(map['audioFormat']! as String)).input(),
      enableAudioRedaction: map['enableAudioRedaction'] == null ? null : (map['enableAudioRedaction']! as bool).input(),
      gcsBucket: map['gcsBucket'] == null ? null : (map['gcsBucket']! as String).input(),
    );
  }
}

