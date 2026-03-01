// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbuild_v1_get_git_lab_config_args_doc}
/// Arguments for getGitLabConfig.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v1_get_git_lab_config_args_doc}
class GetGitLabConfigArgs {
  final pulumi.Input<String> gitLabConfigId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGitLabConfigArgs].
  /// [gitLabConfigId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetGitLabConfigArgs({
    required pulumi.Output<String> gitLabConfigId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      gitLabConfigId = pulumi.Input.asInput<String>(gitLabConfigId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitLabConfigId': gitLabConfigId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetGitLabConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetGitLabConfigArgs(
      gitLabConfigId: pulumi.Output.create<String>(map['gitLabConfigId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

