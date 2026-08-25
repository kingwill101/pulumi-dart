// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_cleanup_policy.dart';
import 'get_repository_docker_config.dart';
import 'get_repository_maven_config.dart';
import 'get_repository_remote_repository_config.dart';
import 'get_repository_virtual_repository_config.dart';
import 'get_repository_vulnerability_scanning_config.dart';

/// Result data returned by getRepository.
class GetRepositoryResult {
  final List<GetRepositoryCleanupPolicy>? cleanupPolicies;
  final bool? cleanupPolicyDryRun;
  final String? createTime;
  final String? deletionPolicy;
  final String? description;
  final List<GetRepositoryDockerConfig>? dockerConfigs;
  final Map<String, String>? effectiveLabels;
  final String? format;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? kmsKeyName;
  final Map<String, String>? labels;
  final String? location;
  final List<GetRepositoryMavenConfig>? mavenConfigs;
  final String? mode;
  final String? name;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final String? registryUri;
  final List<GetRepositoryRemoteRepositoryConfig>? remoteRepositoryConfigs;
  final String? repositoryId;
  final String? updateTime;
  final List<GetRepositoryVirtualRepositoryConfig>? virtualRepositoryConfigs;
  final List<GetRepositoryVulnerabilityScanningConfig>? vulnerabilityScanningConfigs;

  /// Creates a new [GetRepositoryResult].
  /// [cleanupPolicies] Optional.
  /// [cleanupPolicyDryRun] Optional.
  /// [createTime] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [dockerConfigs] Optional.
  /// [effectiveLabels] Optional.
  /// [format] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyName] Optional.
  /// [labels] Optional.
  /// [location] Optional.
  /// [mavenConfigs] Optional.
  /// [mode] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [registryUri] Optional.
  /// [remoteRepositoryConfigs] Optional.
  /// [repositoryId] Optional.
  /// [updateTime] Optional.
  /// [virtualRepositoryConfigs] Optional.
  /// [vulnerabilityScanningConfigs] Optional.
  const GetRepositoryResult({
    this.cleanupPolicies,
    this.cleanupPolicyDryRun,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.dockerConfigs,
    this.effectiveLabels,
    this.format,
    this.id,
    this.kmsKeyName,
    this.labels,
    this.location,
    this.mavenConfigs,
    this.mode,
    this.name,
    this.project,
    this.pulumiLabels,
    this.registryUri,
    this.remoteRepositoryConfigs,
    this.repositoryId,
    this.updateTime,
    this.virtualRepositoryConfigs,
    this.vulnerabilityScanningConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cleanupPolicies': ?(() { final guardedValue = cleanupPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRepositoryCleanupPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'cleanupPolicyDryRun': ?cleanupPolicyDryRun,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'dockerConfigs': ?(() { final guardedValue = dockerConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRepositoryDockerConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'effectiveLabels': ?effectiveLabels,
      'format': ?format,
      'id': ?id,
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'location': ?location,
      'mavenConfigs': ?(() { final guardedValue = mavenConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRepositoryMavenConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'mode': ?mode,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'registryUri': ?registryUri,
      'remoteRepositoryConfigs': ?(() { final guardedValue = remoteRepositoryConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRepositoryRemoteRepositoryConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'repositoryId': ?repositoryId,
      'updateTime': ?updateTime,
      'virtualRepositoryConfigs': ?(() { final guardedValue = virtualRepositoryConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRepositoryVirtualRepositoryConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'vulnerabilityScanningConfigs': ?(() { final guardedValue = vulnerabilityScanningConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRepositoryVulnerabilityScanningConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetRepositoryResult.fromMap(Map<String, dynamic> map) {
    return GetRepositoryResult(
      cleanupPolicies: (() { final guardedValue = map['cleanupPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRepositoryCleanupPolicy>(guardedValue, (value) => GetRepositoryCleanupPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      cleanupPolicyDryRun: (() { final guardedValue = map['cleanupPolicyDryRun']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dockerConfigs: (() { final guardedValue = map['dockerConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRepositoryDockerConfig>(guardedValue, (value) => GetRepositoryDockerConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mavenConfigs: (() { final guardedValue = map['mavenConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRepositoryMavenConfig>(guardedValue, (value) => GetRepositoryMavenConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      registryUri: (() { final guardedValue = map['registryUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      remoteRepositoryConfigs: (() { final guardedValue = map['remoteRepositoryConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRepositoryRemoteRepositoryConfig>(guardedValue, (value) => GetRepositoryRemoteRepositoryConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      repositoryId: (() { final guardedValue = map['repositoryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualRepositoryConfigs: (() { final guardedValue = map['virtualRepositoryConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRepositoryVirtualRepositoryConfig>(guardedValue, (value) => GetRepositoryVirtualRepositoryConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      vulnerabilityScanningConfigs: (() { final guardedValue = map['vulnerabilityScanningConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRepositoryVulnerabilityScanningConfig>(guardedValue, (value) => GetRepositoryVulnerabilityScanningConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
