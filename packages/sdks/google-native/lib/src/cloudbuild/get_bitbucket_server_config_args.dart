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
  GetBitbucketServerConfigArgs({
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
      bitbucketServerConfigId: (map['bitbucketServerConfigId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

