// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxSecuritySettingsAudioExportSettings {
  /// Filename pattern for exported audio.
  final pulumi.Input<String>? audioExportPattern;
  /// File format for exported audio file. Currently only in telephony recordings.
  /// * MULAW: G.711 mu-law PCM with 8kHz sample rate.
  /// * MP3: MP3 file format.
  /// * OGG: OGG Vorbis.
  /// Possible values are: `MULAW`, `MP3`, `OGG`.
  final pulumi.Input<String>? audioFormat;
  /// Enable audio redaction if it is true.
  final pulumi.Input<bool>? enableAudioRedaction;
  /// Cloud Storage bucket to export audio record to. Setting this field would grant the Storage Object Creator role to the Dialogflow Service Agent. API caller that tries to modify this field should have the permission of storage.buckets.setIamPolicy.
  final pulumi.Input<String>? gcsBucket;

  /// Creates a new [CxSecuritySettingsAudioExportSettings].
  /// [audioExportPattern] Filename pattern for exported audio.
  /// [audioFormat] File format for exported audio file. Currently only in telephony recordings.
  /// [enableAudioRedaction] Enable audio redaction if it is true.
  /// [gcsBucket] Cloud Storage bucket to export audio record to. Setting this field would grant the Storage Object Creator role to the Dialogflow Service Agent. API caller that tries to modify this field should have the permission of storage.buckets.setIamPolicy.
  const CxSecuritySettingsAudioExportSettings({
    this.audioExportPattern,
    this.audioFormat,
    this.enableAudioRedaction,
    this.gcsBucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioExportPattern': ?audioExportPattern,
      'audioFormat': ?audioFormat,
      'enableAudioRedaction': ?enableAudioRedaction,
      'gcsBucket': ?gcsBucket,
    };
  }

  factory CxSecuritySettingsAudioExportSettings.fromMap(Map<String, dynamic> map) {
    return CxSecuritySettingsAudioExportSettings(
      audioExportPattern: (() { final guardedValue = map['audioExportPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      audioFormat: (() { final guardedValue = map['audioFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableAudioRedaction: (() { final guardedValue = map['enableAudioRedaction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gcsBucket: (() { final guardedValue = map['gcsBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
