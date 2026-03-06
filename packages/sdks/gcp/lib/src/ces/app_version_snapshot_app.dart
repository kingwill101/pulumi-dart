// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_app_audio_processing_config.dart';
import 'app_version_snapshot_app_client_certificate_setting.dart';
import 'app_version_snapshot_app_data_store_setting.dart';
import 'app_version_snapshot_app_default_channel_profile.dart';
import 'app_version_snapshot_app_evaluation_metrics_threshold.dart';
import 'app_version_snapshot_app_language_setting.dart';
import 'app_version_snapshot_app_logging_setting.dart';
import 'app_version_snapshot_app_model_setting.dart';
import 'app_version_snapshot_app_time_zone_setting.dart';
import 'app_version_snapshot_app_variable_declaration.dart';

class AppVersionSnapshotApp {
  /// (Output)
  /// Configuration for how the input and output audio should be processed and
  /// delivered.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppAudioProcessingConfig>>? audioProcessingConfigs;
  /// (Output)
  /// The default client certificate settings for the app.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppClientCertificateSetting>>? clientCertificateSettings;
  /// (Output)
  /// Timestamp when the toolset was created.
  final pulumi.Input<String>? createTime;
  /// (Output)
  /// Data store related settings for the app.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppDataStoreSetting>>? dataStoreSettings;
  /// (Output)
  /// A ChannelProfile configures the agent's behavior for a specific communication
  /// channel, such as web UI or telephony.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppDefaultChannelProfile>>? defaultChannelProfiles;
  /// (Output)
  /// Number of deployments in the app.
  final pulumi.Input<int>? deploymentCount;
  /// The description of the app version.
  final pulumi.Input<String>? description;
  /// The display name of the app version.
  final pulumi.Input<String>? displayName;
  /// (Output)
  /// ETag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  final pulumi.Input<String>? etag;
  /// (Output)
  /// Threshold settings for metrics in an Evaluation.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppEvaluationMetricsThreshold>>? evaluationMetricsThresholds;
  /// (Output)
  /// Instructions for all the agents in the app.
  /// You can use this instruction to set up a stable identity or personality
  /// across all the agents.
  final pulumi.Input<String>? globalInstruction;
  /// (Output)
  /// List of guardrails for the app.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/guardrails/{guardrail}`
  final pulumi.Input<List<String>>? guardrails;
  /// (Output)
  /// Language settings of the app.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppLanguageSetting>>? languageSettings;
  /// (Output)
  /// Settings to describe the logging behaviors for the app.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppLoggingSetting>>? loggingSettings;
  /// (Output)
  /// Metadata about the app. This field can be used to store additional
  /// information relevant to the app's details or intended usages.
  final pulumi.Input<Map<String, String>>? metadata;
  /// (Output)
  /// Model settings contains various configurations for the LLM model.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppModelSetting>>? modelSettings;
  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final pulumi.Input<String>? name;
  /// (Output)
  /// The root agent is the entry point of the app.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  final pulumi.Input<String>? rootAgent;
  /// (Output)
  /// TimeZone settings of the app.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppTimeZoneSetting>>? timeZoneSettings;
  /// (Output)
  /// Timestamp when the toolset was last updated.
  final pulumi.Input<String>? updateTime;
  /// (Output)
  /// The declarations of the variables.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppVariableDeclaration>>? variableDeclarations;

  /// Creates a new [AppVersionSnapshotApp].
  /// [audioProcessingConfigs] (Output)
  /// [clientCertificateSettings] (Output)
  /// [createTime] (Output)
  /// [dataStoreSettings] (Output)
  /// [defaultChannelProfiles] (Output)
  /// [deploymentCount] (Output)
  /// [description] The description of the app version.
  /// [displayName] The display name of the app version.
  /// [etag] (Output)
  /// [evaluationMetricsThresholds] (Output)
  /// [globalInstruction] (Output)
  /// [guardrails] (Output)
  /// [languageSettings] (Output)
  /// [loggingSettings] (Output)
  /// [metadata] (Output)
  /// [modelSettings] (Output)
  /// [name] (Output)
  /// [rootAgent] (Output)
  /// [timeZoneSettings] (Output)
  /// [updateTime] (Output)
  /// [variableDeclarations] (Output)
  const AppVersionSnapshotApp({
    this.audioProcessingConfigs,
    this.clientCertificateSettings,
    this.createTime,
    this.dataStoreSettings,
    this.defaultChannelProfiles,
    this.deploymentCount,
    this.description,
    this.displayName,
    this.etag,
    this.evaluationMetricsThresholds,
    this.globalInstruction,
    this.guardrails,
    this.languageSettings,
    this.loggingSettings,
    this.metadata,
    this.modelSettings,
    this.name,
    this.rootAgent,
    this.timeZoneSettings,
    this.updateTime,
    this.variableDeclarations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioProcessingConfigs': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppAudioProcessingConfig>, List<Map<String, dynamic>>>(audioProcessingConfigs, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppAudioProcessingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientCertificateSettings': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppClientCertificateSetting>, List<Map<String, dynamic>>>(clientCertificateSettings, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppClientCertificateSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'dataStoreSettings': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppDataStoreSetting>, List<Map<String, dynamic>>>(dataStoreSettings, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppDataStoreSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultChannelProfiles': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppDefaultChannelProfile>, List<Map<String, dynamic>>>(defaultChannelProfiles, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppDefaultChannelProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deploymentCount': ?deploymentCount,
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'evaluationMetricsThresholds': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppEvaluationMetricsThreshold>, List<Map<String, dynamic>>>(evaluationMetricsThresholds, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppEvaluationMetricsThreshold, Map<String, dynamic>>(value, (value) => value.toMap())),
      'globalInstruction': ?globalInstruction,
      'guardrails': ?guardrails,
      'languageSettings': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppLanguageSetting>, List<Map<String, dynamic>>>(languageSettings, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppLanguageSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loggingSettings': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppLoggingSetting>, List<Map<String, dynamic>>>(loggingSettings, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppLoggingSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metadata': ?metadata,
      'modelSettings': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppModelSetting>, List<Map<String, dynamic>>>(modelSettings, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppModelSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'rootAgent': ?rootAgent,
      'timeZoneSettings': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppTimeZoneSetting>, List<Map<String, dynamic>>>(timeZoneSettings, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppTimeZoneSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateTime': ?updateTime,
      'variableDeclarations': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppVariableDeclaration>, List<Map<String, dynamic>>>(variableDeclarations, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppVariableDeclaration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppVersionSnapshotApp.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotApp(
      audioProcessingConfigs: (() { final guardedValue = map['audioProcessingConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAppAudioProcessingConfig>(guardedValue, (value) => AppVersionSnapshotAppAudioProcessingConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clientCertificateSettings: (() { final guardedValue = map['clientCertificateSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAppClientCertificateSetting>(guardedValue, (value) => AppVersionSnapshotAppClientCertificateSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataStoreSettings: (() { final guardedValue = map['dataStoreSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAppDataStoreSetting>(guardedValue, (value) => AppVersionSnapshotAppDataStoreSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultChannelProfiles: (() { final guardedValue = map['defaultChannelProfiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAppDefaultChannelProfile>(guardedValue, (value) => AppVersionSnapshotAppDefaultChannelProfile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deploymentCount: (() { final guardedValue = map['deploymentCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluationMetricsThresholds: (() { final guardedValue = map['evaluationMetricsThresholds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAppEvaluationMetricsThreshold>(guardedValue, (value) => AppVersionSnapshotAppEvaluationMetricsThreshold.fromMap((value as Map).cast<String, dynamic>()))); })(),
      globalInstruction: (() { final guardedValue = map['globalInstruction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guardrails: (() { final guardedValue = map['guardrails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      languageSettings: (() { final guardedValue = map['languageSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAppLanguageSetting>(guardedValue, (value) => AppVersionSnapshotAppLanguageSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      loggingSettings: (() { final guardedValue = map['loggingSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAppLoggingSetting>(guardedValue, (value) => AppVersionSnapshotAppLoggingSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      modelSettings: (() { final guardedValue = map['modelSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAppModelSetting>(guardedValue, (value) => AppVersionSnapshotAppModelSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootAgent: (() { final guardedValue = map['rootAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZoneSettings: (() { final guardedValue = map['timeZoneSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAppTimeZoneSetting>(guardedValue, (value) => AppVersionSnapshotAppTimeZoneSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      variableDeclarations: (() { final guardedValue = map['variableDeclarations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAppVariableDeclaration>(guardedValue, (value) => AppVersionSnapshotAppVariableDeclaration.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

