// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGroupManagerParams {
  /// Resource manager tags to bind to the managed instance group. The tags are key-value pairs. Keys must be in the format tagKeys/123 and values in the format tagValues/456. For more information, see [Manage tags for resources](https://cloud.google.com/compute/docs/tag-resources)
  ///
  /// - - -
  final pulumi.Input<Map<String, String>>? resourceManagerTags;

  /// Creates a new [InstanceGroupManagerParams].
  /// [resourceManagerTags] Resource manager tags to bind to the managed instance group. The tags are key-value pairs. Keys must be in the format tagKeys/123 and values in the format tagValues/456. For more information, see [Manage tags for resources](https://cloud.google.com/compute/docs/tag-resources)
  const InstanceGroupManagerParams({
    this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceManagerTags': ?resourceManagerTags,
    };
  }

  factory InstanceGroupManagerParams.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerParams(
      resourceManagerTags: (() { final guardedValue = map['resourceManagerTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

