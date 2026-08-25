// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trigger_approval_config.dart';
import 'get_trigger_bitbucket_server_trigger_config.dart';
import 'get_trigger_build.dart';
import 'get_trigger_developer_connect_event_config.dart';
import 'get_trigger_git_file_source.dart';
import 'get_trigger_github.dart';
import 'get_trigger_pubsub_config.dart';
import 'get_trigger_repository_event_config.dart';
import 'get_trigger_source_to_build.dart';
import 'get_trigger_trigger_template.dart';
import 'get_trigger_webhook_config.dart';

/// Result data returned by getTrigger.
class GetTriggerResult {
  final List<GetTriggerApprovalConfig>? approvalConfigs;
  final List<GetTriggerBitbucketServerTriggerConfig>? bitbucketServerTriggerConfigs;
  final List<GetTriggerBuild>? builds;
  final String? createTime;
  final String? deletionPolicy;
  final String? description;
  final List<GetTriggerDeveloperConnectEventConfig>? developerConnectEventConfigs;
  final bool? disabled;
  final String? filename;
  final String? filter;
  final List<GetTriggerGitFileSource>? gitFileSources;
  final List<GetTriggerGithub>? githubs;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<String>? ignoredFiles;
  final String? includeBuildLogs;
  final List<String>? includedFiles;
  final String? location;
  final String? name;
  final String? project;
  final List<GetTriggerPubsubConfig>? pubsubConfigs;
  final List<GetTriggerRepositoryEventConfig>? repositoryEventConfigs;
  final String? serviceAccount;
  final List<GetTriggerSourceToBuild>? sourceToBuilds;
  final Map<String, String>? substitutions;
  final List<String>? tags;
  final String? triggerId;
  final List<GetTriggerTriggerTemplate>? triggerTemplates;
  final List<GetTriggerWebhookConfig>? webhookConfigs;

  /// Creates a new [GetTriggerResult].
  /// [approvalConfigs] Optional.
  /// [bitbucketServerTriggerConfigs] Optional.
  /// [builds] Optional.
  /// [createTime] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [developerConnectEventConfigs] Optional.
  /// [disabled] Optional.
  /// [filename] Optional.
  /// [filter] Optional.
  /// [gitFileSources] Optional.
  /// [githubs] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ignoredFiles] Optional.
  /// [includeBuildLogs] Optional.
  /// [includedFiles] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [pubsubConfigs] Optional.
  /// [repositoryEventConfigs] Optional.
  /// [serviceAccount] Optional.
  /// [sourceToBuilds] Optional.
  /// [substitutions] Optional.
  /// [tags] Optional.
  /// [triggerId] Optional.
  /// [triggerTemplates] Optional.
  /// [webhookConfigs] Optional.
  const GetTriggerResult({
    this.approvalConfigs,
    this.bitbucketServerTriggerConfigs,
    this.builds,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.developerConnectEventConfigs,
    this.disabled,
    this.filename,
    this.filter,
    this.gitFileSources,
    this.githubs,
    this.id,
    this.ignoredFiles,
    this.includeBuildLogs,
    this.includedFiles,
    this.location,
    this.name,
    this.project,
    this.pubsubConfigs,
    this.repositoryEventConfigs,
    this.serviceAccount,
    this.sourceToBuilds,
    this.substitutions,
    this.tags,
    this.triggerId,
    this.triggerTemplates,
    this.webhookConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalConfigs': ?(() { final guardedValue = approvalConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTriggerApprovalConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'bitbucketServerTriggerConfigs': ?(() { final guardedValue = bitbucketServerTriggerConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTriggerBitbucketServerTriggerConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'builds': ?(() { final guardedValue = builds; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTriggerBuild, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'developerConnectEventConfigs': ?(() { final guardedValue = developerConnectEventConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTriggerDeveloperConnectEventConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'disabled': ?disabled,
      'filename': ?filename,
      'filter': ?filter,
      'gitFileSources': ?(() { final guardedValue = gitFileSources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTriggerGitFileSource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'githubs': ?(() { final guardedValue = githubs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTriggerGithub, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ignoredFiles': ?ignoredFiles,
      'includeBuildLogs': ?includeBuildLogs,
      'includedFiles': ?includedFiles,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pubsubConfigs': ?(() { final guardedValue = pubsubConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTriggerPubsubConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'repositoryEventConfigs': ?(() { final guardedValue = repositoryEventConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTriggerRepositoryEventConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'serviceAccount': ?serviceAccount,
      'sourceToBuilds': ?(() { final guardedValue = sourceToBuilds; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTriggerSourceToBuild, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'substitutions': ?substitutions,
      'tags': ?tags,
      'triggerId': ?triggerId,
      'triggerTemplates': ?(() { final guardedValue = triggerTemplates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTriggerTriggerTemplate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'webhookConfigs': ?(() { final guardedValue = webhookConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTriggerWebhookConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetTriggerResult.fromMap(Map<String, dynamic> map) {
    return GetTriggerResult(
      approvalConfigs: (() { final guardedValue = map['approvalConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTriggerApprovalConfig>(guardedValue, (value) => GetTriggerApprovalConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      bitbucketServerTriggerConfigs: (() { final guardedValue = map['bitbucketServerTriggerConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTriggerBitbucketServerTriggerConfig>(guardedValue, (value) => GetTriggerBitbucketServerTriggerConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      builds: (() { final guardedValue = map['builds']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTriggerBuild>(guardedValue, (value) => GetTriggerBuild.fromMap((value as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      developerConnectEventConfigs: (() { final guardedValue = map['developerConnectEventConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTriggerDeveloperConnectEventConfig>(guardedValue, (value) => GetTriggerDeveloperConnectEventConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      filename: (() { final guardedValue = map['filename']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gitFileSources: (() { final guardedValue = map['gitFileSources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTriggerGitFileSource>(guardedValue, (value) => GetTriggerGitFileSource.fromMap((value as Map).cast<String, dynamic>())); })(),
      githubs: (() { final guardedValue = map['githubs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTriggerGithub>(guardedValue, (value) => GetTriggerGithub.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ignoredFiles: (() { final guardedValue = map['ignoredFiles']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      includeBuildLogs: (() { final guardedValue = map['includeBuildLogs']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includedFiles: (() { final guardedValue = map['includedFiles']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pubsubConfigs: (() { final guardedValue = map['pubsubConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTriggerPubsubConfig>(guardedValue, (value) => GetTriggerPubsubConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      repositoryEventConfigs: (() { final guardedValue = map['repositoryEventConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTriggerRepositoryEventConfig>(guardedValue, (value) => GetTriggerRepositoryEventConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceToBuilds: (() { final guardedValue = map['sourceToBuilds']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTriggerSourceToBuild>(guardedValue, (value) => GetTriggerSourceToBuild.fromMap((value as Map).cast<String, dynamic>())); })(),
      substitutions: (() { final guardedValue = map['substitutions']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      triggerId: (() { final guardedValue = map['triggerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      triggerTemplates: (() { final guardedValue = map['triggerTemplates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTriggerTriggerTemplate>(guardedValue, (value) => GetTriggerTriggerTemplate.fromMap((value as Map).cast<String, dynamic>())); })(),
      webhookConfigs: (() { final guardedValue = map['webhookConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTriggerWebhookConfig>(guardedValue, (value) => GetTriggerWebhookConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
