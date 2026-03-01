// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_audio_processing_config.dart';
import 'app_client_certificate_settings.dart';
import 'app_data_store_settings.dart';
import 'app_default_channel_profile.dart';
import 'app_evaluation_metrics_thresholds.dart';
import 'app_language_settings.dart';
import 'app_logging_settings.dart';
import 'app_model_settings.dart';
import 'app_time_zone_settings.dart';
import 'app_variable_declaration.dart';

/// {@template pulumi_ces_app_app_args_doc}
/// The set of arguments for App.
/// {@endtemplate}
/// {@macro pulumi_ces_app_app_args_doc}
class AppArgs {
  /// The ID to use for the app, which will become the final component of
  /// the app's resource name. If not provided, a unique ID will be
  /// automatically assigned for the app.
  final pulumi.Input<String> appId;
  /// Configuration for how the input and output audio should be processed and
  /// delivered.
  /// Structure is documented below.
  final pulumi.Input<AppAudioProcessingConfig>? audioProcessingConfig;
  /// The default client certificate settings for the app.
  /// Structure is documented below.
  final pulumi.Input<AppClientCertificateSettings>? clientCertificateSettings;
  /// Data store related settings for the app.
  /// Structure is documented below.
  final pulumi.Input<AppDataStoreSettings>? dataStoreSettings;
  /// A ChannelProfile configures the agent's behavior for a specific communication
  /// channel, such as web UI or telephony.
  /// Structure is documented below.
  final pulumi.Input<AppDefaultChannelProfile>? defaultChannelProfile;
  /// Human-readable description of the app.
  final pulumi.Input<String>? description;
  /// Display name of the app.
  final pulumi.Input<String> displayName;
  /// Threshold settings for metrics in an Evaluation.
  /// Structure is documented below.
  final pulumi.Input<AppEvaluationMetricsThresholds>? evaluationMetricsThresholds;
  /// Instructions for all the agents in the app.
  /// You can use this instruction to set up a stable identity or personality
  /// across all the agents.
  final pulumi.Input<String>? globalInstruction;
  /// List of guardrails for the app.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/guardrails/{guardrail}`
  final pulumi.Input<List<String>>? guardrails;
  /// Language settings of the app.
  /// Structure is documented below.
  final pulumi.Input<AppLanguageSettings>? languageSettings;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// Settings to describe the logging behaviors for the app.
  /// Structure is documented below.
  final pulumi.Input<AppLoggingSettings>? loggingSettings;
  /// Metadata about the app. This field can be used to store additional
  /// information relevant to the app's details or intended usages.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Model settings contains various configurations for the LLM model.
  /// Structure is documented below.
  final pulumi.Input<AppModelSettings>? modelSettings;
  /// Whether the app is pinned in the app list.
  final pulumi.Input<bool>? pinned;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The root agent is the entry point of the app.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  final pulumi.Input<String>? rootAgent;
  /// TimeZone settings of the app.
  /// Structure is documented below.
  final pulumi.Input<AppTimeZoneSettings>? timeZoneSettings;
  /// The declarations of the variables.
  /// Structure is documented below.
  final pulumi.Input<List<AppVariableDeclaration>>? variableDeclarations;

  /// Creates a new [AppArgs].
  /// [appId] The ID to use for the app, which will become the final component of
  /// [audioProcessingConfig] Configuration for how the input and output audio should be processed and
  /// [clientCertificateSettings] The default client certificate settings for the app.
  /// [dataStoreSettings] Data store related settings for the app.
  /// [defaultChannelProfile] A ChannelProfile configures the agent's behavior for a specific communication
  /// [description] Human-readable description of the app.
  /// [displayName] Display name of the app.
  /// [evaluationMetricsThresholds] Threshold settings for metrics in an Evaluation.
  /// [globalInstruction] Instructions for all the agents in the app.
  /// [guardrails] List of guardrails for the app.
  /// [languageSettings] Language settings of the app.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [loggingSettings] Settings to describe the logging behaviors for the app.
  /// [metadata] Metadata about the app. This field can be used to store additional
  /// [modelSettings] Model settings contains various configurations for the LLM model.
  /// [pinned] Whether the app is pinned in the app list.
  /// [project] The ID of the project in which the resource belongs.
  /// [rootAgent] The root agent is the entry point of the app.
  /// [timeZoneSettings] TimeZone settings of the app.
  /// [variableDeclarations] The declarations of the variables.
  AppArgs({
    required pulumi.Output<String> appId,
    pulumi.Output<AppAudioProcessingConfig>? audioProcessingConfig,
    pulumi.Output<AppClientCertificateSettings>? clientCertificateSettings,
    pulumi.Output<AppDataStoreSettings>? dataStoreSettings,
    pulumi.Output<AppDefaultChannelProfile>? defaultChannelProfile,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<AppEvaluationMetricsThresholds>? evaluationMetricsThresholds,
    pulumi.Output<String>? globalInstruction,
    pulumi.Output<List<String>>? guardrails,
    pulumi.Output<AppLanguageSettings>? languageSettings,
    required pulumi.Output<String> location,
    pulumi.Output<AppLoggingSettings>? loggingSettings,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<AppModelSettings>? modelSettings,
    pulumi.Output<bool>? pinned,
    pulumi.Output<String>? project,
    pulumi.Output<String>? rootAgent,
    pulumi.Output<AppTimeZoneSettings>? timeZoneSettings,
    pulumi.Output<List<AppVariableDeclaration>>? variableDeclarations,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      audioProcessingConfig = pulumi.Input.asOptionalInput<AppAudioProcessingConfig>(audioProcessingConfig),
      clientCertificateSettings = pulumi.Input.asOptionalInput<AppClientCertificateSettings>(clientCertificateSettings),
      dataStoreSettings = pulumi.Input.asOptionalInput<AppDataStoreSettings>(dataStoreSettings),
      defaultChannelProfile = pulumi.Input.asOptionalInput<AppDefaultChannelProfile>(defaultChannelProfile),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      evaluationMetricsThresholds = pulumi.Input.asOptionalInput<AppEvaluationMetricsThresholds>(evaluationMetricsThresholds),
      globalInstruction = pulumi.Input.asOptionalInput<String>(globalInstruction),
      guardrails = pulumi.Input.asOptionalInput<List<String>>(guardrails),
      languageSettings = pulumi.Input.asOptionalInput<AppLanguageSettings>(languageSettings),
      location = pulumi.Input.asInput<String>(location),
      loggingSettings = pulumi.Input.asOptionalInput<AppLoggingSettings>(loggingSettings),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      modelSettings = pulumi.Input.asOptionalInput<AppModelSettings>(modelSettings),
      pinned = pulumi.Input.asOptionalInput<bool>(pinned),
      project = pulumi.Input.asOptionalInput<String>(project),
      rootAgent = pulumi.Input.asOptionalInput<String>(rootAgent),
      timeZoneSettings = pulumi.Input.asOptionalInput<AppTimeZoneSettings>(timeZoneSettings),
      variableDeclarations = pulumi.Input.asOptionalInput<List<AppVariableDeclaration>>(variableDeclarations);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'audioProcessingConfig': ?pulumi.Input.mapOptionalInputValue<AppAudioProcessingConfig, Map<String, dynamic>>(audioProcessingConfig, (value) => value.toMap()),
      'clientCertificateSettings': ?pulumi.Input.mapOptionalInputValue<AppClientCertificateSettings, Map<String, dynamic>>(clientCertificateSettings, (value) => value.toMap()),
      'dataStoreSettings': ?pulumi.Input.mapOptionalInputValue<AppDataStoreSettings, Map<String, dynamic>>(dataStoreSettings, (value) => value.toMap()),
      'defaultChannelProfile': ?pulumi.Input.mapOptionalInputValue<AppDefaultChannelProfile, Map<String, dynamic>>(defaultChannelProfile, (value) => value.toMap()),
      'description': ?description,
      'displayName': displayName,
      'evaluationMetricsThresholds': ?pulumi.Input.mapOptionalInputValue<AppEvaluationMetricsThresholds, Map<String, dynamic>>(evaluationMetricsThresholds, (value) => value.toMap()),
      'globalInstruction': ?globalInstruction,
      'guardrails': ?guardrails,
      'languageSettings': ?pulumi.Input.mapOptionalInputValue<AppLanguageSettings, Map<String, dynamic>>(languageSettings, (value) => value.toMap()),
      'location': location,
      'loggingSettings': ?pulumi.Input.mapOptionalInputValue<AppLoggingSettings, Map<String, dynamic>>(loggingSettings, (value) => value.toMap()),
      'metadata': ?metadata,
      'modelSettings': ?pulumi.Input.mapOptionalInputValue<AppModelSettings, Map<String, dynamic>>(modelSettings, (value) => value.toMap()),
      'pinned': ?pinned,
      'project': ?project,
      'rootAgent': ?rootAgent,
      'timeZoneSettings': ?pulumi.Input.mapOptionalInputValue<AppTimeZoneSettings, Map<String, dynamic>>(timeZoneSettings, (value) => value.toMap()),
      'variableDeclarations': ?pulumi.Input.mapOptionalInputValue<List<AppVariableDeclaration>, List<Map<String, dynamic>>>(variableDeclarations, (value) => pulumi.Input.encodeList<AppVariableDeclaration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppArgs.fromMap(Map<String, dynamic> map) {
    return AppArgs(
      appId: pulumi.Output.create<String>(map['appId'] as String),
      audioProcessingConfig: map['audioProcessingConfig'] == null ? null : pulumi.Output.create<AppAudioProcessingConfig>(AppAudioProcessingConfig.fromMap((map['audioProcessingConfig'] as Map).cast<String, dynamic>())),
      clientCertificateSettings: map['clientCertificateSettings'] == null ? null : pulumi.Output.create<AppClientCertificateSettings>(AppClientCertificateSettings.fromMap((map['clientCertificateSettings'] as Map).cast<String, dynamic>())),
      dataStoreSettings: map['dataStoreSettings'] == null ? null : pulumi.Output.create<AppDataStoreSettings>(AppDataStoreSettings.fromMap((map['dataStoreSettings'] as Map).cast<String, dynamic>())),
      defaultChannelProfile: map['defaultChannelProfile'] == null ? null : pulumi.Output.create<AppDefaultChannelProfile>(AppDefaultChannelProfile.fromMap((map['defaultChannelProfile'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      evaluationMetricsThresholds: map['evaluationMetricsThresholds'] == null ? null : pulumi.Output.create<AppEvaluationMetricsThresholds>(AppEvaluationMetricsThresholds.fromMap((map['evaluationMetricsThresholds'] as Map).cast<String, dynamic>())),
      globalInstruction: map['globalInstruction'] == null ? null : pulumi.Output.create<String>(map['globalInstruction'] as String),
      guardrails: map['guardrails'] == null ? null : pulumi.Output.create<List<String>>((map['guardrails'] as List).cast<String>()),
      languageSettings: map['languageSettings'] == null ? null : pulumi.Output.create<AppLanguageSettings>(AppLanguageSettings.fromMap((map['languageSettings'] as Map).cast<String, dynamic>())),
      location: pulumi.Output.create<String>(map['location'] as String),
      loggingSettings: map['loggingSettings'] == null ? null : pulumi.Output.create<AppLoggingSettings>(AppLoggingSettings.fromMap((map['loggingSettings'] as Map).cast<String, dynamic>())),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      modelSettings: map['modelSettings'] == null ? null : pulumi.Output.create<AppModelSettings>(AppModelSettings.fromMap((map['modelSettings'] as Map).cast<String, dynamic>())),
      pinned: map['pinned'] == null ? null : pulumi.Output.create<bool>(map['pinned'] as bool),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      rootAgent: map['rootAgent'] == null ? null : pulumi.Output.create<String>(map['rootAgent'] as String),
      timeZoneSettings: map['timeZoneSettings'] == null ? null : pulumi.Output.create<AppTimeZoneSettings>(AppTimeZoneSettings.fromMap((map['timeZoneSettings'] as Map).cast<String, dynamic>())),
      variableDeclarations: map['variableDeclarations'] == null ? null : pulumi.Output.create<List<AppVariableDeclaration>>(pulumi.Input.decodeList<AppVariableDeclaration>(map['variableDeclarations'], (value) => AppVariableDeclaration.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

