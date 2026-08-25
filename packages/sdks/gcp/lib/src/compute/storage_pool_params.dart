// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StoragePoolParams {
  /// Resource manager tags to be bound to the storage pool. Tag keys and values have the
  /// same definition as resource manager tags. Keys and values can be either in numeric format,
  /// such as tagKeys/{tag_key_id} and tagValues/{tag_value_id} or in namespaced format such as
  /// {org_id|projectId}/{tag_key_short_name} and {tag_value_short_name}. The field is ignored when empty.
  /// The field is immutable and causes resource replacement when mutated. This field is only
  /// set at create time and modifying this field after creation will trigger recreation.
  /// To apply tags to an existing resource, see the gcp.tags.TagBinding resource.
  final pulumi.Input<Map<String, String>?>? resourceManagerTags;

  /// Creates a new [StoragePoolParams].
  /// [resourceManagerTags] Resource manager tags to be bound to the storage pool. Tag keys and values have the
  const StoragePoolParams({
    this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceManagerTags': ?resourceManagerTags,
    };
  }

  factory StoragePoolParams.fromMap(Map<String, dynamic> map) {
    return StoragePoolParams(
      resourceManagerTags: (() { final guardedValue = map['resourceManagerTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
