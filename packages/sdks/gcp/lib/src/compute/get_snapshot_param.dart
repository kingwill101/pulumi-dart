// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSnapshotParam {
  /// Resource manager tags to be bound to the snapshot. Tag keys and values have the
  /// same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id},
  /// and values are in the format tagValues/456.
  final pulumi.Input<Map<String, String>> resourceManagerTags;

  /// Creates a new [GetSnapshotParam].
  /// [resourceManagerTags] Resource manager tags to be bound to the snapshot. Tag keys and values have the
  const GetSnapshotParam({
    required this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceManagerTags': resourceManagerTags,
    };
  }

  factory GetSnapshotParam.fromMap(Map<String, dynamic> map) {
    return GetSnapshotParam(
      resourceManagerTags: pulumi.Input.fromValue((map['resourceManagerTags'] as Map).cast<String, String>()),
    );
  }
}
