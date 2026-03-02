// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_security_settings_audio_export_settings.dart';
import 'cx_security_settings_insights_export_settings.dart';

/// {@template pulumi_diagflow_cx_security_settings_cx_security_settings_args_doc}
/// The set of arguments for CxSecuritySettings.
/// {@endtemplate}
/// {@macro pulumi_diagflow_cx_security_settings_cx_security_settings_args_doc}
class CxSecuritySettingsArgs {
  /// Controls audio export settings for post-conversation analytics when ingesting audio to conversations.
  /// If retention_strategy is set to REMOVE_AFTER_CONVERSATION or gcs_bucket is empty, audio export is disabled.
  /// If audio export is enabled, audio is recorded and saved to gcs_bucket, subject to retention policy of gcs_bucket.
  /// This setting won't effect audio input for implicit sessions via [Sessions.DetectIntent](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.sessions/detectIntent#google.cloud.dialogflow.cx.v3.Sessions.DetectIntent).
  /// Structure is documented below.
  final pulumi.Input<CxSecuritySettingsAudioExportSettings>? audioExportSettings;
  /// [DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this template to define de-identification configuration for the content. If empty, Dialogflow replaces sensitive info with [redacted] text.
  /// Note: deidentifyTemplate must be located in the same region as the SecuritySettings.
  /// Format: projects/<Project ID>/locations/<Location ID>/deidentifyTemplates/<Template ID> OR organizations/<Organization ID>/locations/<Location ID>/deidentifyTemplates/<Template ID>
  final pulumi.Input<String>? deidentifyTemplate;
  /// The human-readable name of the security settings, unique within the location.
  final pulumi.Input<String> displayName;
  /// Controls conversation exporting settings to Insights after conversation is completed.
  /// If retentionStrategy is set to REMOVE_AFTER_CONVERSATION, Insights export is disabled no matter what you configure here.
  /// Structure is documented below.
  final pulumi.Input<CxSecuritySettingsInsightsExportSettings>? insightsExportSettings;
  /// [DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this template to define inspect base settings. If empty, we use the default DLP inspect config.
  /// Note: inspectTemplate must be located in the same region as the SecuritySettings.
  /// Format: projects/<Project ID>/locations/<Location ID>/inspectTemplates/<Template ID> OR organizations/<Organization ID>/locations/<Location ID>/inspectTemplates/<Template ID>
  final pulumi.Input<String>? inspectTemplate;
  /// The location these settings are located in. Settings can only be applied to an agent in the same location.
  /// See [Available Regions](https://cloud.google.com/dialogflow/cx/docs/concept/region#avail) for a list of supported locations.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// List of types of data to remove when retention settings triggers purge.
  /// Each value may be one of: `DIALOGFLOW_HISTORY`.
  final pulumi.Input<List<String>>? purgeDataTypes;
  /// Defines what types of data to redact. If not set, defaults to not redacting any kind of data.
  /// * REDACT_DISK_STORAGE: On data to be written to disk or similar devices that are capable of holding data even if power is disconnected. This includes data that are temporarily saved on disk.
  /// Possible values are: `REDACT_DISK_STORAGE`.
  final pulumi.Input<String>? redactionScope;
  /// Defines how we redact data. If not set, defaults to not redacting.
  /// * REDACT_WITH_SERVICE: Call redaction service to clean up the data to be persisted.
  /// Possible values are: `REDACT_WITH_SERVICE`.
  final pulumi.Input<String>? redactionStrategy;
  /// Defines how long we retain persisted data that contains sensitive info. Only one of `retention_window_days` and `retention_strategy` may be set.
  /// * REMOVE_AFTER_CONVERSATION: Removes data when the conversation ends. If there is no conversation explicitly established, a default conversation ends when the corresponding Dialogflow session ends.
  /// Possible values are: `REMOVE_AFTER_CONVERSATION`.
  final pulumi.Input<String>? retentionStrategy;
  /// Retains the data for the specified number of days. User must set a value lower than Dialogflow's default 365d TTL (30 days for Agent Assist traffic), higher value will be ignored and use default. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use default TTL.
  /// Only one of `retention_window_days` and `retention_strategy` may be set.
  final pulumi.Input<int>? retentionWindowDays;

  /// Creates a new [CxSecuritySettingsArgs].
  /// [audioExportSettings] Controls audio export settings for post-conversation analytics when ingesting audio to conversations.
  /// [deidentifyTemplate] [DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this template to define de-identification configuration for the content. If empty, Dialogflow replaces sensitive info with [redacted] text.
  /// [displayName] The human-readable name of the security settings, unique within the location.
  /// [insightsExportSettings] Controls conversation exporting settings to Insights after conversation is completed.
  /// [inspectTemplate] [DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this template to define inspect base settings. If empty, we use the default DLP inspect config.
  /// [location] The location these settings are located in. Settings can only be applied to an agent in the same location.
  /// [project] The ID of the project in which the resource belongs.
  /// [purgeDataTypes] List of types of data to remove when retention settings triggers purge.
  /// [redactionScope] Defines what types of data to redact. If not set, defaults to not redacting any kind of data.
  /// [redactionStrategy] Defines how we redact data. If not set, defaults to not redacting.
  /// [retentionStrategy] Defines how long we retain persisted data that contains sensitive info. Only one of `retention_window_days` and `retention_strategy` may be set.
  /// [retentionWindowDays] Retains the data for the specified number of days. User must set a value lower than Dialogflow's default 365d TTL (30 days for Agent Assist traffic), higher value will be ignored and use default. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use default TTL.
  CxSecuritySettingsArgs({
    this.audioExportSettings,
    this.deidentifyTemplate,
    required this.displayName,
    this.insightsExportSettings,
    this.inspectTemplate,
    required this.location,
    this.project,
    this.purgeDataTypes,
    this.redactionScope,
    this.redactionStrategy,
    this.retentionStrategy,
    this.retentionWindowDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioExportSettings': ?pulumi.Input.mapOptionalInputValue<CxSecuritySettingsAudioExportSettings, Map<String, dynamic>>(audioExportSettings, (value) => value.toMap()),
      'deidentifyTemplate': ?deidentifyTemplate,
      'displayName': displayName,
      'insightsExportSettings': ?pulumi.Input.mapOptionalInputValue<CxSecuritySettingsInsightsExportSettings, Map<String, dynamic>>(insightsExportSettings, (value) => value.toMap()),
      'inspectTemplate': ?inspectTemplate,
      'location': location,
      'project': ?project,
      'purgeDataTypes': ?purgeDataTypes,
      'redactionScope': ?redactionScope,
      'redactionStrategy': ?redactionStrategy,
      'retentionStrategy': ?retentionStrategy,
      'retentionWindowDays': ?retentionWindowDays,
    };
  }

  factory CxSecuritySettingsArgs.fromMap(Map<String, dynamic> map) {
    return CxSecuritySettingsArgs(
      audioExportSettings: map['audioExportSettings'] == null ? null : (CxSecuritySettingsAudioExportSettings.fromMap((map['audioExportSettings'] as Map).cast<String, dynamic>())).input(),
      deidentifyTemplate: map['deidentifyTemplate'] == null ? null : (map['deidentifyTemplate'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      insightsExportSettings: map['insightsExportSettings'] == null ? null : (CxSecuritySettingsInsightsExportSettings.fromMap((map['insightsExportSettings'] as Map).cast<String, dynamic>())).input(),
      inspectTemplate: map['inspectTemplate'] == null ? null : (map['inspectTemplate'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      purgeDataTypes: map['purgeDataTypes'] == null ? null : ((map['purgeDataTypes'] as List).cast<String>()).input(),
      redactionScope: map['redactionScope'] == null ? null : (map['redactionScope'] as String).input(),
      redactionStrategy: map['redactionStrategy'] == null ? null : (map['redactionStrategy'] as String).input(),
      retentionStrategy: map['retentionStrategy'] == null ? null : (map['retentionStrategy'] as String).input(),
      retentionWindowDays: map['retentionWindowDays'] == null ? null : (map['retentionWindowDays'] as int).input(),
    );
  }
}

