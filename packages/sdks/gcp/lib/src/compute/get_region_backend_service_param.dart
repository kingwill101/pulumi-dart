// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionBackendServiceParam {
  /// Resource manager tags to be bound to the region backend service. Tag keys and values have the
  /// same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id},
  /// and values are in the format tagValues/456.
  final pulumi.Input<Map<String, String>> resourceManagerTags;

  /// Creates a new [GetRegionBackendServiceParam].
  /// [resourceManagerTags] Resource manager tags to be bound to the region backend service. Tag keys and values have the
  GetRegionBackendServiceParam({required this.resourceManagerTags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceManagerTags': resourceManagerTags};
  }

  factory GetRegionBackendServiceParam.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceParam(
      resourceManagerTags: pulumi.Input.fromValue(
        (map['resourceManagerTags'] as Map).cast<String, String>(),
      ),
    );
  }
}
