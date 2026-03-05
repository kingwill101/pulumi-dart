// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_bucket_view_args_doc}
/// Arguments for getBucketView.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_bucket_view_args_doc}
class GetBucketViewArgs {
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> viewId;

  /// Creates a new [GetBucketViewArgs].
  /// [bucketId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [viewId] Required.
  GetBucketViewArgs({
    required this.bucketId,
    required this.location,
    this.project,
    required this.viewId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': bucketId,
      'location': location,
      'project': ?project,
      'viewId': viewId,
    };
  }

  factory GetBucketViewArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketViewArgs(
      bucketId: pulumi.Input.fromValue(map['bucketId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      viewId: pulumi.Input.fromValue(map['viewId'] as String),
    );
  }
}

