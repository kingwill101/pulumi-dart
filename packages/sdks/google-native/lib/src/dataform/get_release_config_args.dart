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
  const GetReleaseConfigArgs({
    required this.location,
    this.project,
    required this.releaseConfigId,
    required this.repositoryId,
  });

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
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseConfigId: pulumi.Input.fromValue(map['releaseConfigId'] as String),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
    );
  }
}
