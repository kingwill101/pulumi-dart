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
  /// If retentionStrategy is set to REMOVE_AFTER_CONVERSATION or gcsBucket is empty, audio export is disabled.
  /// If audio export is enabled, audio is recorded and saved to gcs_bucket, subject to retention policy of gcs_bucket.
  /// This setting won't effect audio input for implicit sessions via [Sessions.DetectIntent](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.sessions/detectIntent#google.cloud.dialogflow.cx.v3.Sessions.DetectIntent).
  /// Structure is documented below.
  final pulumi.Input<CxSecuritySettingsAudioExportSettings>? audioExportSettings;
  /// [DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this template to define de-identification configuration for the content. If empty, Dialogflow replaces sensitive info with [redacted] text.
  /// Note: deidentifyTemplate must be located in the same region as the SecuritySettings.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/deidentifyTemplates/&lt;Template ID&gt; OR organizations/&lt;Organization ID&gt;/locations/&lt;Location ID&gt;/deidentifyTemplates/&lt;Template ID&gt;
  final pulumi.Input<String>? deidentifyTemplate;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The human-readable name of the security settings, unique within the location.
  final pulumi.Input<String> displayName;
  /// Controls conversation exporting settings to Insights after conversation is completed.
  /// If retentionStrategy is set to REMOVE_AFTER_CONVERSATION, Insights export is disabled no matter what you configure here.
  /// Structure is documented below.
  final pulumi.Input<CxSecuritySettingsInsightsExportSettings>? insightsExportSettings;
  /// [DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this template to define inspect base settings. If empty, we use the default DLP inspect config.
  /// Note: inspectTemplate must be located in the same region as the SecuritySettings.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/inspectTemplates/&lt;Template ID&gt; OR organizations/&lt;Organization ID&gt;/locations/&lt;Location ID&gt;/inspectTemplates/&lt;Template ID&gt;
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
  /// Defines how long we retain persisted data that contains sensitive info. Only one of `retentionWindowDays` and `retentionStrategy` may be set.
  /// * REMOVE_AFTER_CONVERSATION: Removes data when the conversation ends. If there is no conversation explicitly established, a default conversation ends when the corresponding Dialogflow session ends.
  /// Possible values are: `REMOVE_AFTER_CONVERSATION`.
  final pulumi.Input<String>? retentionStrategy;
  /// Retains the data for the specified number of days. User must set a value lower than Dialogflow's default 365d TTL (30 days for Agent Assist traffic), higher value will be ignored and use default. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use default TTL.
  /// Only one of `retentionWindowDays` and `retentionStrategy` may be set.
  final pulumi.Input<int>? retentionWindowDays;

  /// Creates a new [CxSecuritySettingsArgs].
  /// [audioExportSettings] Controls audio export settings for post-conversation analytics when ingesting audio to conversations.
  /// [deidentifyTemplate] [DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this template to define de-identification configuration for the content. If empty, Dialogflow replaces sensitive info with [redacted] text.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The human-readable name of the security settings, unique within the location.
  /// [insightsExportSettings] Controls conversation exporting settings to Insights after conversation is completed.
  /// [inspectTemplate] [DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this template to define inspect base settings. If empty, we use the default DLP inspect config.
  /// [location] The location these settings are located in. Settings can only be applied to an agent in the same location.
  /// [project] The ID of the project in which the resource belongs.
  /// [purgeDataTypes] List of types of data to remove when retention settings triggers purge.
  /// [redactionScope] Defines what types of data to redact. If not set, defaults to not redacting any kind of data.
  /// [redactionStrategy] Defines how we redact data. If not set, defaults to not redacting.
  /// [retentionStrategy] Defines how long we retain persisted data that contains sensitive info. Only one of `retentionWindowDays` and `retentionStrategy` may be set.
  /// [retentionWindowDays] Retains the data for the specified number of days. User must set a value lower than Dialogflow's default 365d TTL (30 days for Agent Assist traffic), higher value will be ignored and use default. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use default TTL.
  const CxSecuritySettingsArgs({
    this.audioExportSettings,
    this.deidentifyTemplate,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      audioExportSettings: (() { final guardedValue = map['audioExportSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxSecuritySettingsAudioExportSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deidentifyTemplate: (() { final guardedValue = map['deidentifyTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      insightsExportSettings: (() { final guardedValue = map['insightsExportSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxSecuritySettingsInsightsExportSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inspectTemplate: (() { final guardedValue = map['inspectTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      purgeDataTypes: (() { final guardedValue = map['purgeDataTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      redactionScope: (() { final guardedValue = map['redactionScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redactionStrategy: (() { final guardedValue = map['redactionStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionStrategy: (() { final guardedValue = map['retentionStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionWindowDays: (() { final guardedValue = map['retentionWindowDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
