// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_bucket_args_doc}
/// Arguments for getBucket.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_bucket_args_doc}
class GetBucketArgs {
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBucketArgs].
  /// [bucketId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetBucketArgs({
    required pulumi.Output<String> bucketId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      bucketId = pulumi.Input.asInput<String>(bucketId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': bucketId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetBucketArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketArgs(
      bucketId: pulumi.Output.create<String>(map['bucketId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

