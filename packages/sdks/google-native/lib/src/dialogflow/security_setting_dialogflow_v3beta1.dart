import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_security_settings_audio_export_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_security_settings_insights_export_settings_response.dart';
import 'security_setting_dialogflow_v3beta1_args.dart';

/// Create security settings in the specified location.
class SecuritySettingDialogflowV3beta1 extends pulumi.CustomResource {
  /// Controls audio export settings for post-conversation analytics when ingesting audio to conversations via Participants.AnalyzeContent or Participants.StreamingAnalyzeContent. If retention_strategy is set to REMOVE_AFTER_CONVERSATION or audio_export_settings.gcs_bucket is empty, audio export is disabled. If audio export is enabled, audio is recorded and saved to audio_export_settings.gcs_bucket, subject to retention policy of audio_export_settings.gcs_bucket. This setting won't effect audio input for implicit sessions via Sessions.DetectIntent or Sessions.StreamingDetectIntent.
  late final pulumi.Output<
    GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettingsResponse
  >
  audioExportSettings;

  /// [DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this template to define de-identification configuration for the content. The `DLP De-identify Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, Dialogflow replaces sensitive info with `[redacted]` text. The template name will have one of the following formats: `projects//locations//deidentifyTemplates/` OR `organizations//locations//deidentifyTemplates/` Note: `deidentify_template` must be located in the same region as the `SecuritySettings`.
  late final pulumi.Output<String> deidentifyTemplate;

  /// The human-readable name of the security settings, unique within the location.
  late final pulumi.Output<String> displayName;

  /// Controls conversation exporting settings to Insights after conversation is completed. If retention_strategy is set to REMOVE_AFTER_CONVERSATION, Insights export is disabled no matter what you configure here.
  late final pulumi.Output<
    GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettingsResponse
  >
  insightsExportSettings;

  /// [DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this template to define inspect base settings. The `DLP Inspect Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, we use the default DLP inspect config. The template name will have one of the following formats: `projects//locations//inspectTemplates/` OR `organizations//locations//inspectTemplates/` Note: `inspect_template` must be located in the same region as the `SecuritySettings`.
  late final pulumi.Output<String> inspectTemplate;
  late final pulumi.Output<String> location;

  /// Resource name of the settings. Required for the SecuritySettingsService.UpdateSecuritySettings method. SecuritySettingsService.CreateSecuritySettings populates the name automatically. Format: `projects//locations//securitySettings/`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// List of types of data to remove when retention settings triggers purge.
  late final pulumi.Output<List<String>> purgeDataTypes;

  /// Defines the data for which Dialogflow applies redaction. Dialogflow does not redact data that it does not have access to – for example, Cloud logging.
  late final pulumi.Output<String> redactionScope;

  /// Strategy that defines how we do redaction.
  late final pulumi.Output<String> redactionStrategy;

  /// Specifies the retention behavior defined by SecuritySettings.RetentionStrategy.
  late final pulumi.Output<String> retentionStrategy;

  /// Retains data in interaction logging for the specified number of days. This does not apply to Cloud logging, which is owned by the user - not Dialogflow. User must set a value lower than Dialogflow's default 365d TTL (30 days for Agent Assist traffic), higher value will be ignored and use default. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use default TTL.
  late final pulumi.Output<int> retentionWindowDays;

  /// Creates a new [SecuritySettingDialogflowV3beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecuritySettingDialogflowV3beta1]. {@macro pulumi_dialogflow_v3beta1_security_setting_dialogflow_v3beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecuritySettingDialogflowV3beta1(
    String name, {
    SecuritySettingDialogflowV3beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:dialogflow/v3beta1:SecuritySetting',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    audioExportSettings =
        registerOutput<
          GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettingsResponse
        >('audioExportSettings');
    deidentifyTemplate = registerOutput<String>('deidentifyTemplate');
    displayName = registerOutput<String>('displayName');
    insightsExportSettings =
        registerOutput<
          GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettingsResponse
        >('insightsExportSettings');
    inspectTemplate = registerOutput<String>('inspectTemplate');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    purgeDataTypes = registerOutput<List<String>>('purgeDataTypes');
    redactionScope = registerOutput<String>('redactionScope');
    redactionStrategy = registerOutput<String>('redactionStrategy');
    retentionStrategy = registerOutput<String>('retentionStrategy');
    retentionWindowDays = registerOutput<int>('retentionWindowDays');
  }
}
