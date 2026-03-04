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
  GetBucketArgs({required this.bucketId, required this.location, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': bucketId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetBucketArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketArgs(
      bucketId: pulumi.Input.fromValue(map['bucketId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
