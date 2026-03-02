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
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      releaseConfigId: (map['releaseConfigId'] as String).input(),
      repositoryId: (map['repositoryId'] as String).input(),
    );
  }
}

