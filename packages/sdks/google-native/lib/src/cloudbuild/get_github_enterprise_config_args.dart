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
    pulumi.Output<String>? configId,
    required pulumi.Output<String> githubEnterpriseConfigId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    pulumi.Output<String>? projectId,
  }) :
      configId = pulumi.Input.asOptionalInput<String>(configId),
      githubEnterpriseConfigId = pulumi.Input.asInput<String>(githubEnterpriseConfigId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      projectId = pulumi.Input.asOptionalInput<String>(projectId);

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
      configId: map['configId'] == null ? null : pulumi.Output.create<String>(map['configId'] as String),
      githubEnterpriseConfigId: pulumi.Output.create<String>(map['githubEnterpriseConfigId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
    );
  }
}

