// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataform_v1beta1_get_release_config_args_doc}
/// Arguments for getReleaseConfig.
/// {@endtemplate}
/// {@macro pulumi_dataform_v1beta1_get_release_config_args_doc}
class GetReleaseConfigArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> releaseConfigId;
  final pulumi.Input<String> repositoryId;

  /// Creates a new [GetReleaseConfigArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [releaseConfigId] Required.
  /// [repositoryId] Required.
  GetReleaseConfigArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> releaseConfigId,
    required pulumi.Output<String> repositoryId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      releaseConfigId = pulumi.Input.asInput<String>(releaseConfigId),
      repositoryId = pulumi.Input.asInput<String>(repositoryId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'releaseConfigId': releaseConfigId,
      'repositoryId': repositoryId,
    };
  }

  factory GetReleaseConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetReleaseConfigArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      releaseConfigId: pulumi.Output.create<String>(map['releaseConfigId'] as String),
      repositoryId: pulumi.Output.create<String>(map['repositoryId'] as String),
    );
  }
}

