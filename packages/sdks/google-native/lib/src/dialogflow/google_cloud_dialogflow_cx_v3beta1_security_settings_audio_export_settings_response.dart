// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for exporting audio.
class GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettingsResponse {
  /// Filename pattern for exported audio.
  final pulumi.Input<String> audioExportPattern;

  /// File format for exported audio file. Currently only in telephony recordings.
  final pulumi.Input<String> audioFormat;

  /// Enable audio redaction if it is true.
  final pulumi.Input<bool> enableAudioRedaction;

  /// Cloud Storage bucket to export audio record to. Setting this field would grant the Storage Object Creator role to the Dialogflow Service Agent. API caller that tries to modify this field should have the permission of storage.buckets.setIamPolicy.
  final pulumi.Input<String> gcsBucket;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettingsResponse].
  /// [audioExportPattern] Filename pattern for exported audio.
  /// [audioFormat] File format for exported audio file. Currently only in telephony recordings.
  /// [enableAudioRedaction] Enable audio redaction if it is true.
  /// [gcsBucket] Cloud Storage bucket to export audio record to. Setting this field would grant the Storage Object Creator role to the Dialogflow Service Agent. API caller that tries to modify this field should have the permission of storage.buckets.setIamPolicy.
  GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettingsResponse({
    required this.audioExportPattern,
    required this.audioFormat,
    required this.enableAudioRedaction,
    required this.gcsBucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioExportPattern': audioExportPattern,
      'audioFormat': audioFormat,
      'enableAudioRedaction': enableAudioRedaction,
      'gcsBucket': gcsBucket,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettingsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettingsResponse(
      audioExportPattern: pulumi.Input.fromValue(
        map['audioExportPattern'] as String,
      ),
      audioFormat: pulumi.Input.fromValue(map['audioFormat'] as String),
      enableAudioRedaction: pulumi.Input.fromValue(
        map['enableAudioRedaction'] as bool,
      ),
      gcsBucket: pulumi.Input.fromValue(map['gcsBucket'] as String),
    );
  }
}
