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
    required pulumi.Output<String> bitbucketServerConfigId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      bitbucketServerConfigId = pulumi.Input.asInput<String>(bitbucketServerConfigId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitbucketServerConfigId': bitbucketServerConfigId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetBitbucketServerConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetBitbucketServerConfigArgs(
      bitbucketServerConfigId: pulumi.Output.create<String>(map['bitbucketServerConfigId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

