// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_flow_advanced_settings_audio_export_gcs_destination.dart';
import 'cx_flow_advanced_settings_dtmf_settings.dart';
import 'cx_flow_advanced_settings_logging_settings.dart';
import 'cx_flow_advanced_settings_speech_settings.dart';

class CxFlowAdvancedSettings {
  /// If present, incoming audio is exported by Dialogflow to the configured Google Cloud Storage destination. Exposed at the following levels:
  /// * Agent level
  /// * Flow level
  /// Structure is documented below.
  final pulumi.Input<CxFlowAdvancedSettingsAudioExportGcsDestination>? audioExportGcsDestination;
  /// Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:
  /// * Agent level
  /// * Flow level
  /// * Page level
  /// * Parameter level
  /// Structure is documented below.
  final pulumi.Input<CxFlowAdvancedSettingsDtmfSettings>? dtmfSettings;
  /// Settings for logging. Settings for Dialogflow History, Contact Center messages, StackDriver logs, and speech logging. Exposed at the following levels:
  /// * Agent level
  /// Structure is documented below.
  final pulumi.Input<CxFlowAdvancedSettingsLoggingSettings>? loggingSettings;
  /// Settings for speech to text detection. Exposed at the following levels:
  /// * Agent level
  /// * Flow level
  /// * Page level
  /// * Parameter level
  /// Structure is documented below.
  final pulumi.Input<CxFlowAdvancedSettingsSpeechSettings>? speechSettings;

  /// Creates a new [CxFlowAdvancedSettings].
  /// [audioExportGcsDestination] If present, incoming audio is exported by Dialogflow to the configured Google Cloud Storage destination. Exposed at the following levels:
  /// [dtmfSettings] Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:
  /// [loggingSettings] Settings for logging. Settings for Dialogflow History, Contact Center messages, StackDriver logs, and speech logging. Exposed at the following levels:
  /// [speechSettings] Settings for speech to text detection. Exposed at the following levels:
  CxFlowAdvancedSettings({
    this.audioExportGcsDestination,
    this.dtmfSettings,
    this.loggingSettings,
    this.speechSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioExportGcsDestination': ?pulumi.Input.mapOptionalInputValue<CxFlowAdvancedSettingsAudioExportGcsDestination, Map<String, dynamic>>(audioExportGcsDestination, (value) => value.toMap()),
      'dtmfSettings': ?pulumi.Input.mapOptionalInputValue<CxFlowAdvancedSettingsDtmfSettings, Map<String, dynamic>>(dtmfSettings, (value) => value.toMap()),
      'loggingSettings': ?pulumi.Input.mapOptionalInputValue<CxFlowAdvancedSettingsLoggingSettings, Map<String, dynamic>>(loggingSettings, (value) => value.toMap()),
      'speechSettings': ?pulumi.Input.mapOptionalInputValue<CxFlowAdvancedSettingsSpeechSettings, Map<String, dynamic>>(speechSettings, (value) => value.toMap()),
    };
  }

  factory CxFlowAdvancedSettings.fromMap(Map<String, dynamic> map) {
    return CxFlowAdvancedSettings(
      audioExportGcsDestination: map['audioExportGcsDestination'] == null ? null : (CxFlowAdvancedSettingsAudioExportGcsDestination.fromMap((map['audioExportGcsDestination'] as Map).cast<String, dynamic>())).input(),
      dtmfSettings: map['dtmfSettings'] == null ? null : (CxFlowAdvancedSettingsDtmfSettings.fromMap((map['dtmfSettings'] as Map).cast<String, dynamic>())).input(),
      loggingSettings: map['loggingSettings'] == null ? null : (CxFlowAdvancedSettingsLoggingSettings.fromMap((map['loggingSettings'] as Map).cast<String, dynamic>())).input(),
      speechSettings: map['speechSettings'] == null ? null : (CxFlowAdvancedSettingsSpeechSettings.fromMap((map['speechSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

