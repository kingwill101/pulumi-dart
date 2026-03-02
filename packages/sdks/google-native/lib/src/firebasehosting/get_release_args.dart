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
    required this.channelId,
    this.project,
    required this.releaseId,
    required this.siteId,
  });

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
      channelId: (map['channelId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      releaseId: (map['releaseId'] as String).input(),
      siteId: (map['siteId'] as String).input(),
    );
  }
}

