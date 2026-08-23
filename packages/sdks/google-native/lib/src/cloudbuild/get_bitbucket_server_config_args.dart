// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbuild_v1_get_bitbucket_server_config_args_doc}
/// Arguments for getBitbucketServerConfig.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v1_get_bitbucket_server_config_args_doc}
class GetBitbucketServerConfigArgs {
  final pulumi.Input<String> bitbucketServerConfigId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBitbucketServerConfigArgs].
  /// [bitbucketServerConfigId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetBitbucketServerConfigArgs({
    required this.bitbucketServerConfigId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitbucketServerConfigId': bitbucketServerConfigId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetBitbucketServerConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetBitbucketServerConfigArgs(
      bitbucketServerConfigId: pulumi.Input.fromValue(map['bitbucketServerConfigId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
