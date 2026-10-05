// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3_security_settings_audio_export_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3_security_settings_insights_export_settings_response.dart';

/// Result data returned by getSecuritySetting.
class GetSecuritySettingResult {
  /// Controls audio export settings for post-conversation analytics when ingesting audio to conversations via Participants.AnalyzeContent or Participants.StreamingAnalyzeContent. If retention_strategy is set to REMOVE_AFTER_CONVERSATION or audio_export_settings.gcs_bucket is empty, audio export is disabled. If audio export is enabled, audio is recorded and saved to audio_export_settings.gcs_bucket, subject to retention policy of audio_export_settings.gcs_bucket. This setting won't effect audio input for implicit sessions via Sessions.DetectIntent or Sessions.StreamingDetectIntent.
  final GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettingsResponse? audioExportSettings;
  /// [DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this template to define de-identification configuration for the content. The `DLP De-identify Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, Dialogflow replaces sensitive info with `[redacted]` text. The template name will have one of the following formats: `projects//locations//deidentifyTemplates/` OR `organizations//locations//deidentifyTemplates/` Note: `deidentify_template` must be located in the same region as the `SecuritySettings`.
  final String? deidentifyTemplate;
  /// The human-readable name of the security settings, unique within the location.
  final String? displayName;
  /// Controls conversation exporting settings to Insights after conversation is completed. If retention_strategy is set to REMOVE_AFTER_CONVERSATION, Insights export is disabled no matter what you configure here.
  final GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettingsResponse? insightsExportSettings;
  /// [DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this template to define inspect base settings. The `DLP Inspect Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, we use the default DLP inspect config. The template name will have one of the following formats: `projects//locations//inspectTemplates/` OR `organizations//locations//inspectTemplates/` Note: `inspect_template` must be located in the same region as the `SecuritySettings`.
  final String? inspectTemplate;
  /// Resource name of the settings. Required for the SecuritySettingsService.UpdateSecuritySettings method. SecuritySettingsService.CreateSecuritySettings populates the name automatically. Format: `projects//locations//securitySettings/`.
  final String? name;
  /// List of types of data to remove when retention settings triggers purge.
  final List<String>? purgeDataTypes;
  /// Defines the data for which Dialogflow applies redaction. Dialogflow does not redact data that it does not have access to – for example, Cloud logging.
  final String? redactionScope;
  /// Strategy that defines how we do redaction.
  final String? redactionStrategy;
  /// Specifies the retention behavior defined by SecuritySettings.RetentionStrategy.
  final String? retentionStrategy;
  /// Retains the data for the specified number of days. User must set a value lower than Dialogflow's default 365d TTL (30 days for Agent Assist traffic), higher value will be ignored and use default. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use default TTL.
  final int? retentionWindowDays;

  /// Creates a new [GetSecuritySettingResult].
  /// [audioExportSettings] Controls audio export settings for post-conversation analytics when ingesting audio to conversations via Participants.AnalyzeContent or Participants.StreamingAnalyzeContent. If retention_strategy is set to REMOVE_AFTER_CONVERSATION or audio_export_settings.gcs_bucket is empty, audio export is disabled. If audio export is enabled, audio is recorded and saved to audio_export_settings.gcs_bucket, subject to retention policy of audio_export_settings.gcs_bucket. This setting won't effect audio input for implicit sessions via Sessions.DetectIntent or Sessions.StreamingDetectIntent.
  /// [deidentifyTemplate] [DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this template to define de-identification configuration for the content. The `DLP De-identify Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, Dialogflow replaces sensitive info with `[redacted]` text. The template name will have one of the following formats: `projects//locations//deidentifyTemplates/` OR `organizations//locations//deidentifyTemplates/` Note: `deidentify_template` must be located in the same region as the `SecuritySettings`.
  /// [displayName] The human-readable name of the security settings, unique within the location.
  /// [insightsExportSettings] Controls conversation exporting settings to Insights after conversation is completed. If retention_strategy is set to REMOVE_AFTER_CONVERSATION, Insights export is disabled no matter what you configure here.
  /// [inspectTemplate] [DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this template to define inspect base settings. The `DLP Inspect Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, we use the default DLP inspect config. The template name will have one of the following formats: `projects//locations//inspectTemplates/` OR `organizations//locations//inspectTemplates/` Note: `inspect_template` must be located in the same region as the `SecuritySettings`.
  /// [name] Resource name of the settings. Required for the SecuritySettingsService.UpdateSecuritySettings method. SecuritySettingsService.CreateSecuritySettings populates the name automatically. Format: `projects//locations//securitySettings/`.
  /// [purgeDataTypes] List of types of data to remove when retention settings triggers purge.
  /// [redactionScope] Defines the data for which Dialogflow applies redaction. Dialogflow does not redact data that it does not have access to – for example, Cloud logging.
  /// [redactionStrategy] Strategy that defines how we do redaction.
  /// [retentionStrategy] Specifies the retention behavior defined by SecuritySettings.RetentionStrategy.
  /// [retentionWindowDays] Retains the data for the specified number of days. User must set a value lower than Dialogflow's default 365d TTL (30 days for Agent Assist traffic), higher value will be ignored and use default. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use default TTL.
  const GetSecuritySettingResult({
    this.audioExportSettings,
    this.deidentifyTemplate,
    this.displayName,
    this.insightsExportSettings,
    this.inspectTemplate,
    this.name,
    this.purgeDataTypes,
    this.redactionScope,
    this.redactionStrategy,
    this.retentionStrategy,
    this.retentionWindowDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioExportSettings': ?audioExportSettings?.toMap(),
      'deidentifyTemplate': ?deidentifyTemplate,
      'displayName': ?displayName,
      'insightsExportSettings': ?insightsExportSettings?.toMap(),
      'inspectTemplate': ?inspectTemplate,
      'name': ?name,
      'purgeDataTypes': ?purgeDataTypes,
      'redactionScope': ?redactionScope,
      'redactionStrategy': ?redactionStrategy,
      'retentionStrategy': ?retentionStrategy,
      'retentionWindowDays': ?retentionWindowDays,
    };
  }

  factory GetSecuritySettingResult.fromMap(Map<String, dynamic> map) {
    return GetSecuritySettingResult(
      audioExportSettings: (() { final guardedValue = map['audioExportSettings']; if (guardedValue == null) return null; return GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      deidentifyTemplate: (() { final guardedValue = map['deidentifyTemplate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      insightsExportSettings: (() { final guardedValue = map['insightsExportSettings']; if (guardedValue == null) return null; return GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      inspectTemplate: (() { final guardedValue = map['inspectTemplate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      purgeDataTypes: (() { final guardedValue = map['purgeDataTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      redactionScope: (() { final guardedValue = map['redactionScope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      redactionStrategy: (() { final guardedValue = map['redactionStrategy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retentionStrategy: (() { final guardedValue = map['retentionStrategy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retentionWindowDays: (() { final guardedValue = map['retentionWindowDays']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
    );
  }
}
