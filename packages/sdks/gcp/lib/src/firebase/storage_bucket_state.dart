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
  StorageBucketState({
    pulumi.Output<String>? bucketId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      bucketId = pulumi.Input.asOptionalInput<String>(bucketId),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': ?bucketId,
      'name': ?name,
      'project': ?project,
    };
  }

  factory StorageBucketState.fromMap(Map<String, dynamic> map) {
    return StorageBucketState(
      bucketId: map['bucketId'] == null ? null : pulumi.Output.create<String>(map['bucketId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

