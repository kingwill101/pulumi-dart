// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_advanced_settings_dtmf_settings.dart';
import 'google_cloud_dialogflow_cx_v3_advanced_settings_logging_settings.dart';
import 'google_cloud_dialogflow_cx_v3_gcs_destination.dart';

/// Hierarchical advanced settings for agent/flow/page/fulfillment/parameter. Settings exposed at lower level overrides the settings exposed at higher level. Overriding occurs at the sub-setting level. For example, the playback_interruption_settings at fulfillment level only overrides the playback_interruption_settings at the agent level, leaving other settings at the agent level unchanged. DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Hierarchy: Agent-&gt;Flow-&gt;Page-&gt;Fulfillment/Parameter.
class GoogleCloudDialogflowCxV3AdvancedSettings {
  /// If present, incoming audio is exported by Dialogflow to the configured Google Cloud Storage destination. Exposed at the following levels: - Agent level - Flow level
  final pulumi.Input<GoogleCloudDialogflowCxV3GcsDestination>? audioExportGcsDestination;
  /// Settings for DTMF. Exposed at the following levels: - Agent level - Flow level - Page level - Parameter level.
  final pulumi.Input<GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings>? dtmfSettings;
  /// Settings for logging. Settings for Dialogflow History, Contact Center messages, StackDriver logs, and speech logging. Exposed at the following levels: - Agent level.
  final pulumi.Input<GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings>? loggingSettings;

  /// Creates a new [GoogleCloudDialogflowCxV3AdvancedSettings].
  /// [audioExportGcsDestination] If present, incoming audio is exported by Dialogflow to the configured Google Cloud Storage destination. Exposed at the following levels: - Agent level - Flow level
  /// [dtmfSettings] Settings for DTMF. Exposed at the following levels: - Agent level - Flow level - Page level - Parameter level.
  /// [loggingSettings] Settings for logging. Settings for Dialogflow History, Contact Center messages, StackDriver logs, and speech logging. Exposed at the following levels: - Agent level.
  GoogleCloudDialogflowCxV3AdvancedSettings({
    this.audioExportGcsDestination,
    this.dtmfSettings,
    this.loggingSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioExportGcsDestination': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3GcsDestination, Map<String, dynamic>>(audioExportGcsDestination, (value) => value.toMap()),
      'dtmfSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings, Map<String, dynamic>>(dtmfSettings, (value) => value.toMap()),
      'loggingSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings, Map<String, dynamic>>(loggingSettings, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3AdvancedSettings.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3AdvancedSettings(
      audioExportGcsDestination: (() { final guardedValue = map['audioExportGcsDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3GcsDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dtmfSettings: (() { final guardedValue = map['dtmfSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loggingSettings: (() { final guardedValue = map['loggingSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

