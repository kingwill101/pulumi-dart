// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackendBucketParams {
  /// Resource manager tags to be bound to the backend bucket. Tag keys and values have the
  /// same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id},
  /// and values are in the format tagValues/456.
  final pulumi.Input<Map<String, String>>? resourceManagerTags;

  /// Creates a new [BackendBucketParams].
  /// [resourceManagerTags] Resource manager tags to be bound to the backend bucket. Tag keys and values have the
  BackendBucketParams({
    this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceManagerTags': ?resourceManagerTags,
    };
  }

  factory BackendBucketParams.fromMap(Map<String, dynamic> map) {
    return BackendBucketParams(
      resourceManagerTags: map['resourceManagerTags'] == null ? null : ((map['resourceManagerTags']! as Map).cast<String, String>()).input(),
    );
  }
}

