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
    required this.gitLabConfigId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitLabConfigId': gitLabConfigId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetGitLabConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetGitLabConfigArgs(
      gitLabConfigId: (map['gitLabConfigId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

