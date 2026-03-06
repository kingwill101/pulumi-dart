// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StorageBucket resources.
class StorageBucketState {
  /// Required. Immutable. The ID of the underlying Google Cloud Storage bucket
  final pulumi.Input<String>? bucketId;
  /// Resource name of the bucket in the format projects/PROJECT_IDENTIFIER/buckets/BUCKET_ID
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [StorageBucketState].
  /// [bucketId] Required. Immutable. The ID of the underlying Google Cloud Storage bucket
  /// [name] Resource name of the bucket in the format projects/PROJECT_IDENTIFIER/buckets/BUCKET_ID
  /// [project] The ID of the project in which the resource belongs.
  const StorageBucketState({
    this.bucketId,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': ?bucketId,
      'name': ?name,
      'project': ?project,
    };
  }

  factory StorageBucketState.fromMap(Map<String, dynamic> map) {
    return StorageBucketState(
      bucketId: (() { final guardedValue = map['bucketId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

