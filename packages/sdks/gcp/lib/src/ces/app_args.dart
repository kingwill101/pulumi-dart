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
    required this.appId,
    this.audioProcessingConfig,
    this.clientCertificateSettings,
    this.dataStoreSettings,
    this.defaultChannelProfile,
    this.description,
    required this.displayName,
    this.evaluationMetricsThresholds,
    this.globalInstruction,
    this.guardrails,
    this.languageSettings,
    required this.location,
    this.loggingSettings,
    this.metadata,
    this.modelSettings,
    this.pinned,
    this.project,
    this.rootAgent,
    this.timeZoneSettings,
    this.variableDeclarations,
  });

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
      appId: (map['appId'] as String).input(),
      audioProcessingConfig: map['audioProcessingConfig'] == null ? null : (AppAudioProcessingConfig.fromMap((map['audioProcessingConfig']! as Map).cast<String, dynamic>())).input(),
      clientCertificateSettings: map['clientCertificateSettings'] == null ? null : (AppClientCertificateSettings.fromMap((map['clientCertificateSettings']! as Map).cast<String, dynamic>())).input(),
      dataStoreSettings: map['dataStoreSettings'] == null ? null : (AppDataStoreSettings.fromMap((map['dataStoreSettings']! as Map).cast<String, dynamic>())).input(),
      defaultChannelProfile: map['defaultChannelProfile'] == null ? null : (AppDefaultChannelProfile.fromMap((map['defaultChannelProfile']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      evaluationMetricsThresholds: map['evaluationMetricsThresholds'] == null ? null : (AppEvaluationMetricsThresholds.fromMap((map['evaluationMetricsThresholds']! as Map).cast<String, dynamic>())).input(),
      globalInstruction: map['globalInstruction'] == null ? null : (map['globalInstruction']! as String).input(),
      guardrails: map['guardrails'] == null ? null : ((map['guardrails']! as List).cast<String>()).input(),
      languageSettings: map['languageSettings'] == null ? null : (AppLanguageSettings.fromMap((map['languageSettings']! as Map).cast<String, dynamic>())).input(),
      location: (map['location'] as String).input(),
      loggingSettings: map['loggingSettings'] == null ? null : (AppLoggingSettings.fromMap((map['loggingSettings']! as Map).cast<String, dynamic>())).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata']! as Map).cast<String, String>()).input(),
      modelSettings: map['modelSettings'] == null ? null : (AppModelSettings.fromMap((map['modelSettings']! as Map).cast<String, dynamic>())).input(),
      pinned: map['pinned'] == null ? null : (map['pinned']! as bool).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      rootAgent: map['rootAgent'] == null ? null : (map['rootAgent']! as String).input(),
      timeZoneSettings: map['timeZoneSettings'] == null ? null : (AppTimeZoneSettings.fromMap((map['timeZoneSettings']! as Map).cast<String, dynamic>())).input(),
      variableDeclarations: map['variableDeclarations'] == null ? null : (pulumi.Input.decodeList<AppVariableDeclaration>(map['variableDeclarations']!, (value) => AppVariableDeclaration.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

