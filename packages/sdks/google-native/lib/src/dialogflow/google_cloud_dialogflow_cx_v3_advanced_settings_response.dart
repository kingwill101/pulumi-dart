// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_advanced_settings_dtmf_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3_advanced_settings_logging_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3_gcs_destination_response.dart';

/// Hierarchical advanced settings for agent/flow/page/fulfillment/parameter. Settings exposed at lower level overrides the settings exposed at higher level. Overriding occurs at the sub-setting level. For example, the playback_interruption_settings at fulfillment level only overrides the playback_interruption_settings at the agent level, leaving other settings at the agent level unchanged. DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Hierarchy: Agent-&gt;Flow-&gt;Page-&gt;Fulfillment/Parameter.
class GoogleCloudDialogflowCxV3AdvancedSettingsResponse {
  /// If present, incoming audio is exported by Dialogflow to the configured Google Cloud Storage destination. Exposed at the following levels: - Agent level - Flow level
  final pulumi.Input<GoogleCloudDialogflowCxV3GcsDestinationResponse>
  audioExportGcsDestination;

  /// Settings for DTMF. Exposed at the following levels: - Agent level - Flow level - Page level - Parameter level.
  final pulumi.Input<
    GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettingsResponse
  >
  dtmfSettings;

  /// Settings for logging. Settings for Dialogflow History, Contact Center messages, StackDriver logs, and speech logging. Exposed at the following levels: - Agent level.
  final pulumi.Input<
    GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettingsResponse
  >
  loggingSettings;

  /// Creates a new [GoogleCloudDialogflowCxV3AdvancedSettingsResponse].
  /// [audioExportGcsDestination] If present, incoming audio is exported by Dialogflow to the configured Google Cloud Storage destination. Exposed at the following levels: - Agent level - Flow level
  /// [dtmfSettings] Settings for DTMF. Exposed at the following levels: - Agent level - Flow level - Page level - Parameter level.
  /// [loggingSettings] Settings for logging. Settings for Dialogflow History, Contact Center messages, StackDriver logs, and speech logging. Exposed at the following levels: - Agent level.
  GoogleCloudDialogflowCxV3AdvancedSettingsResponse({
    required this.audioExportGcsDestination,
    required this.dtmfSettings,
    required this.loggingSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioExportGcsDestination':
          pulumi.Input.mapInputValue<
            GoogleCloudDialogflowCxV3GcsDestinationResponse,
            Map<String, dynamic>
          >(audioExportGcsDestination, (value) => value.toMap()),
      'dtmfSettings':
          pulumi.Input.mapInputValue<
            GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettingsResponse,
            Map<String, dynamic>
          >(dtmfSettings, (value) => value.toMap()),
      'loggingSettings':
          pulumi.Input.mapInputValue<
            GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettingsResponse,
            Map<String, dynamic>
          >(loggingSettings, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3AdvancedSettingsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3AdvancedSettingsResponse(
      audioExportGcsDestination: pulumi.Input.fromValue(
        GoogleCloudDialogflowCxV3GcsDestinationResponse.fromMap(
          (map['audioExportGcsDestination']! as Map).cast<String, dynamic>(),
        ),
      ),
      dtmfSettings: pulumi.Input.fromValue(
        GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettingsResponse.fromMap(
          (map['dtmfSettings']! as Map).cast<String, dynamic>(),
        ),
      ),
      loggingSettings: pulumi.Input.fromValue(
        GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettingsResponse.fromMap(
          (map['loggingSettings']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
