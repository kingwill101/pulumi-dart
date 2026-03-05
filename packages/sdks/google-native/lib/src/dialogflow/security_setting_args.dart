// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_security_settings_audio_export_settings.dart';
import 'google_cloud_dialogflow_cx_v3_security_settings_insights_export_settings.dart';
import 'security_setting_purge_data_types_item.dart';
import 'security_setting_redaction_scope.dart';
import 'security_setting_redaction_strategy.dart';
import 'security_setting_retention_strategy.dart';

/// {@template pulumi_dialogflow_v3_security_setting_args_doc}
/// The set of arguments for SecuritySetting.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_security_setting_args_doc}
class SecuritySettingArgs {
  /// Controls audio export settings for post-conversation analytics when ingesting audio to conversations via Participants.AnalyzeContent or Participants.StreamingAnalyzeContent. If retention_strategy is set to REMOVE_AFTER_CONVERSATION or audio_export_settings.gcs_bucket is empty, audio export is disabled. If audio export is enabled, audio is recorded and saved to audio_export_settings.gcs_bucket, subject to retention policy of audio_export_settings.gcs_bucket. This setting won't effect audio input for implicit sessions via Sessions.DetectIntent or Sessions.StreamingDetectIntent.
  final pulumi.Input<GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings>? audioExportSettings;
  /// [DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this template to define de-identification configuration for the content. The `DLP De-identify Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, Dialogflow replaces sensitive info with `[redacted]` text. The template name will have one of the following formats: `projects//locations//deidentifyTemplates/` OR `organizations//locations//deidentifyTemplates/` Note: `deidentify_template` must be located in the same region as the `SecuritySettings`.
  final pulumi.Input<String>? deidentifyTemplate;
  /// The human-readable name of the security settings, unique within the location.
  final pulumi.Input<String> displayName;
  /// Controls conversation exporting settings to Insights after conversation is completed. If retention_strategy is set to REMOVE_AFTER_CONVERSATION, Insights export is disabled no matter what you configure here.
  final pulumi.Input<GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings>? insightsExportSettings;
  /// [DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this template to define inspect base settings. The `DLP Inspect Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, we use the default DLP inspect config. The template name will have one of the following formats: `projects//locations//inspectTemplates/` OR `organizations//locations//inspectTemplates/` Note: `inspect_template` must be located in the same region as the `SecuritySettings`.
  final pulumi.Input<String>? inspectTemplate;
  final pulumi.Input<String>? location;
  /// Resource name of the settings. Required for the SecuritySettingsService.UpdateSecuritySettings method. SecuritySettingsService.CreateSecuritySettings populates the name automatically. Format: `projects//locations//securitySettings/`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// List of types of data to remove when retention settings triggers purge.
  final pulumi.Input<List<SecuritySettingPurgeDataTypesItem>>? purgeDataTypes;
  /// Defines the data for which Dialogflow applies redaction. Dialogflow does not redact data that it does not have access to – for example, Cloud logging.
  final pulumi.Input<SecuritySettingRedactionScope>? redactionScope;
  /// Strategy that defines how we do redaction.
  final pulumi.Input<SecuritySettingRedactionStrategy>? redactionStrategy;
  /// Specifies the retention behavior defined by SecuritySettings.RetentionStrategy.
  final pulumi.Input<SecuritySettingRetentionStrategy>? retentionStrategy;
  /// Retains the data for the specified number of days. User must set a value lower than Dialogflow's default 365d TTL (30 days for Agent Assist traffic), higher value will be ignored and use default. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use default TTL.
  final pulumi.Input<int>? retentionWindowDays;

  /// Creates a new [SecuritySettingArgs].
  /// [audioExportSettings] Controls audio export settings for post-conversation analytics when ingesting audio to conversations via Participants.AnalyzeContent or Participants.StreamingAnalyzeContent. If retention_strategy is set to REMOVE_AFTER_CONVERSATION or audio_export_settings.gcs_bucket is empty, audio export is disabled. If audio export is enabled, audio is recorded and saved to audio_export_settings.gcs_bucket, subject to retention policy of audio_export_settings.gcs_bucket. This setting won't effect audio input for implicit sessions via Sessions.DetectIntent or Sessions.StreamingDetectIntent.
  /// [deidentifyTemplate] [DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this template to define de-identification configuration for the content. The `DLP De-identify Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, Dialogflow replaces sensitive info with `[redacted]` text. The template name will have one of the following formats: `projects//locations//deidentifyTemplates/` OR `organizations//locations//deidentifyTemplates/` Note: `deidentify_template` must be located in the same region as the `SecuritySettings`.
  /// [displayName] The human-readable name of the security settings, unique within the location.
  /// [insightsExportSettings] Controls conversation exporting settings to Insights after conversation is completed. If retention_strategy is set to REMOVE_AFTER_CONVERSATION, Insights export is disabled no matter what you configure here.
  /// [inspectTemplate] [DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this template to define inspect base settings. The `DLP Inspect Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, we use the default DLP inspect config. The template name will have one of the following formats: `projects//locations//inspectTemplates/` OR `organizations//locations//inspectTemplates/` Note: `inspect_template` must be located in the same region as the `SecuritySettings`.
  /// [location] Optional.
  /// [name] Resource name of the settings. Required for the SecuritySettingsService.UpdateSecuritySettings method. SecuritySettingsService.CreateSecuritySettings populates the name automatically. Format: `projects//locations//securitySettings/`.
  /// [project] Optional.
  /// [purgeDataTypes] List of types of data to remove when retention settings triggers purge.
  /// [redactionScope] Defines the data for which Dialogflow applies redaction. Dialogflow does not redact data that it does not have access to – for example, Cloud logging.
  /// [redactionStrategy] Strategy that defines how we do redaction.
  /// [retentionStrategy] Specifies the retention behavior defined by SecuritySettings.RetentionStrategy.
  /// [retentionWindowDays] Retains the data for the specified number of days. User must set a value lower than Dialogflow's default 365d TTL (30 days for Agent Assist traffic), higher value will be ignored and use default. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use default TTL.
  SecuritySettingArgs({
    this.audioExportSettings,
    this.deidentifyTemplate,
    required this.displayName,
    this.insightsExportSettings,
    this.inspectTemplate,
    this.location,
    this.name,
    this.project,
    this.purgeDataTypes,
    this.redactionScope,
    this.redactionStrategy,
    this.retentionStrategy,
    this.retentionWindowDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioExportSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings, Map<String, dynamic>>(audioExportSettings, (value) => value.toMap()),
      'deidentifyTemplate': ?deidentifyTemplate,
      'displayName': displayName,
      'insightsExportSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings, Map<String, dynamic>>(insightsExportSettings, (value) => value.toMap()),
      'inspectTemplate': ?inspectTemplate,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'purgeDataTypes': ?pulumi.Input.mapOptionalInputValue<List<SecuritySettingPurgeDataTypesItem>, List<String>>(purgeDataTypes, (value) => pulumi.Input.encodeList<SecuritySettingPurgeDataTypesItem, String>(value, (value) => value.wireValue)),
      'redactionScope': ?pulumi.Input.mapOptionalInputValue<SecuritySettingRedactionScope, String>(redactionScope, (value) => value.wireValue),
      'redactionStrategy': ?pulumi.Input.mapOptionalInputValue<SecuritySettingRedactionStrategy, String>(redactionStrategy, (value) => value.wireValue),
      'retentionStrategy': ?pulumi.Input.mapOptionalInputValue<SecuritySettingRetentionStrategy, String>(retentionStrategy, (value) => value.wireValue),
      'retentionWindowDays': ?retentionWindowDays,
    };
  }

  factory SecuritySettingArgs.fromMap(Map<String, dynamic> map) {
    return SecuritySettingArgs(
      audioExportSettings: (() { final guardedValue = map['audioExportSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deidentifyTemplate: (() { final guardedValue = map['deidentifyTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      insightsExportSettings: (() { final guardedValue = map['insightsExportSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inspectTemplate: (() { final guardedValue = map['inspectTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      purgeDataTypes: (() { final guardedValue = map['purgeDataTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecuritySettingPurgeDataTypesItem>(guardedValue, (value) => SecuritySettingPurgeDataTypesItem.fromValue(value as String))); })(),
      redactionScope: (() { final guardedValue = map['redactionScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecuritySettingRedactionScope.fromValue(guardedValue as String)); })(),
      redactionStrategy: (() { final guardedValue = map['redactionStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecuritySettingRedactionStrategy.fromValue(guardedValue as String)); })(),
      retentionStrategy: (() { final guardedValue = map['retentionStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecuritySettingRetentionStrategy.fromValue(guardedValue as String)); })(),
      retentionWindowDays: (() { final guardedValue = map['retentionWindowDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

