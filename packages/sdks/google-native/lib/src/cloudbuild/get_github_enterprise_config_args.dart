// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbuild_v1_get_github_enterprise_config_args_doc}
/// Arguments for getGithubEnterpriseConfig.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v1_get_github_enterprise_config_args_doc}
class GetGithubEnterpriseConfigArgs {
  final pulumi.Input<String>? configId;
  final pulumi.Input<String> githubEnterpriseConfigId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? projectId;

  /// Creates a new [GetGithubEnterpriseConfigArgs].
  /// [configId] Optional.
  /// [githubEnterpriseConfigId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [projectId] Optional.
  GetGithubEnterpriseConfigArgs({
    this.configId,
    required this.githubEnterpriseConfigId,
    required this.location,
    this.project,
    this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': ?configId,
      'githubEnterpriseConfigId': githubEnterpriseConfigId,
      'location': location,
      'project': ?project,
      'projectId': ?projectId,
    };
  }

  factory GetGithubEnterpriseConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetGithubEnterpriseConfigArgs(
      configId: map['configId'] == null ? null : (map['configId'] as String).input(),
      githubEnterpriseConfigId: (map['githubEnterpriseConfigId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId'] as String).input(),
    );
  }
}

