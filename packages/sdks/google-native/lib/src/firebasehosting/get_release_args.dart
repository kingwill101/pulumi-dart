// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebasehosting_v1beta1_get_release_args_doc}
/// Arguments for getRelease.
/// {@endtemplate}
/// {@macro pulumi_firebasehosting_v1beta1_get_release_args_doc}
class GetReleaseArgs {
  final pulumi.Input<String> channelId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> releaseId;
  final pulumi.Input<String> siteId;

  /// Creates a new [GetReleaseArgs].
  /// [channelId] Required.
  /// [project] Optional.
  /// [releaseId] Required.
  /// [siteId] Required.
  GetReleaseArgs({
    required pulumi.Output<String> channelId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> releaseId,
    required pulumi.Output<String> siteId,
  }) :
      channelId = pulumi.Input.asInput<String>(channelId),
      project = pulumi.Input.asOptionalInput<String>(project),
      releaseId = pulumi.Input.asInput<String>(releaseId),
      siteId = pulumi.Input.asInput<String>(siteId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelId': channelId,
      'project': ?project,
      'releaseId': releaseId,
      'siteId': siteId,
    };
  }

  factory GetReleaseArgs.fromMap(Map<String, dynamic> map) {
    return GetReleaseArgs(
      channelId: pulumi.Output.create<String>(map['channelId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      releaseId: pulumi.Output.create<String>(map['releaseId'] as String),
      siteId: pulumi.Output.create<String>(map['siteId'] as String),
    );
  }
}

