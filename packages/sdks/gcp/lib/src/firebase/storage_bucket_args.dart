// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_storage_bucket_storage_bucket_args_doc}
/// The set of arguments for StorageBucket.
/// {@endtemplate}
/// {@macro pulumi_firebase_storage_bucket_storage_bucket_args_doc}
class StorageBucketArgs {
  /// Required. Immutable. The ID of the underlying Google Cloud Storage bucket
  final pulumi.Input<String>? bucketId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [StorageBucketArgs].
  /// [bucketId] Required. Immutable. The ID of the underlying Google Cloud Storage bucket
  /// [project] The ID of the project in which the resource belongs.
  StorageBucketArgs({
    this.bucketId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': ?bucketId,
      'project': ?project,
    };
  }

  factory StorageBucketArgs.fromMap(Map<String, dynamic> map) {
    return StorageBucketArgs(
      bucketId: (() { final guardedValue = map['bucketId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

