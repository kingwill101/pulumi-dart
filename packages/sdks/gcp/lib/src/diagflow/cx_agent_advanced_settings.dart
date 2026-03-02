// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_agent_advanced_settings_audio_export_gcs_destination.dart';
import 'cx_agent_advanced_settings_dtmf_settings.dart';
import 'cx_agent_advanced_settings_logging_settings.dart';
import 'cx_agent_advanced_settings_speech_settings.dart';

class CxAgentAdvancedSettings {
  /// If present, incoming audio is exported by Dialogflow to the configured Google Cloud Storage destination. Exposed at the following levels:
  /// * Agent level
  /// * Flow level
  /// Structure is documented below.
  final pulumi.Input<CxAgentAdvancedSettingsAudioExportGcsDestination>? audioExportGcsDestination;
  /// Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:
  /// * Agent level
  /// * Flow level
  /// * Page level
  /// * Parameter level
  /// Structure is documented below.
  final pulumi.Input<CxAgentAdvancedSettingsDtmfSettings>? dtmfSettings;
  /// Settings for logging. Settings for Dialogflow History, Contact Center messages, StackDriver logs, and speech logging. Exposed at the following levels:
  /// * Agent level
  /// Structure is documented below.
  final pulumi.Input<CxAgentAdvancedSettingsLoggingSettings>? loggingSettings;
  /// Settings for speech to text detection. Exposed at the following levels:
  /// * Agent level
  /// * Flow level
  /// * Page level
  /// * Parameter level
  /// Structure is documented below.
  final pulumi.Input<CxAgentAdvancedSettingsSpeechSettings>? speechSettings;

  /// Creates a new [CxAgentAdvancedSettings].
  /// [audioExportGcsDestination] If present, incoming audio is exported by Dialogflow to the configured Google Cloud Storage destination. Exposed at the following levels:
  /// [dtmfSettings] Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:
  /// [loggingSettings] Settings for logging. Settings for Dialogflow History, Contact Center messages, StackDriver logs, and speech logging. Exposed at the following levels:
  /// [speechSettings] Settings for speech to text detection. Exposed at the following levels:
  CxAgentAdvancedSettings({
    this.audioExportGcsDestination,
    this.dtmfSettings,
    this.loggingSettings,
    this.speechSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioExportGcsDestination': ?pulumi.Input.mapOptionalInputValue<CxAgentAdvancedSettingsAudioExportGcsDestination, Map<String, dynamic>>(audioExportGcsDestination, (value) => value.toMap()),
      'dtmfSettings': ?pulumi.Input.mapOptionalInputValue<CxAgentAdvancedSettingsDtmfSettings, Map<String, dynamic>>(dtmfSettings, (value) => value.toMap()),
      'loggingSettings': ?pulumi.Input.mapOptionalInputValue<CxAgentAdvancedSettingsLoggingSettings, Map<String, dynamic>>(loggingSettings, (value) => value.toMap()),
      'speechSettings': ?pulumi.Input.mapOptionalInputValue<CxAgentAdvancedSettingsSpeechSettings, Map<String, dynamic>>(speechSettings, (value) => value.toMap()),
    };
  }

  factory CxAgentAdvancedSettings.fromMap(Map<String, dynamic> map) {
    return CxAgentAdvancedSettings(
      audioExportGcsDestination: map['audioExportGcsDestination'] == null ? null : (CxAgentAdvancedSettingsAudioExportGcsDestination.fromMap((map['audioExportGcsDestination']! as Map).cast<String, dynamic>())).input(),
      dtmfSettings: map['dtmfSettings'] == null ? null : (CxAgentAdvancedSettingsDtmfSettings.fromMap((map['dtmfSettings']! as Map).cast<String, dynamic>())).input(),
      loggingSettings: map['loggingSettings'] == null ? null : (CxAgentAdvancedSettingsLoggingSettings.fromMap((map['loggingSettings']! as Map).cast<String, dynamic>())).input(),
      speechSettings: map['speechSettings'] == null ? null : (CxAgentAdvancedSettingsSpeechSettings.fromMap((map['speechSettings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

