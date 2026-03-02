// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceGroupManagerParam {
  /// Resource manager tags to bind to the managed instance group. The tags are key-value pairs. Keys must be in the format tagKeys/123 and values in the format tagValues/456.
  final pulumi.Input<Map<String, String>> resourceManagerTags;

  /// Creates a new [GetInstanceGroupManagerParam].
  /// [resourceManagerTags] Resource manager tags to bind to the managed instance group. The tags are key-value pairs. Keys must be in the format tagKeys/123 and values in the format tagValues/456.
  GetInstanceGroupManagerParam({
    required this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceManagerTags': resourceManagerTags,
    };
  }

  factory GetInstanceGroupManagerParam.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerParam(
      resourceManagerTags: ((map['resourceManagerTags'] as Map).cast<String, String>()).input(),
    );
  }
}

