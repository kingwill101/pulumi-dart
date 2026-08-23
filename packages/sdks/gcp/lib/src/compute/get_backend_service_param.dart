// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackendServiceParam {
  /// Resource manager tags to be bound to the backend service. Tag keys and values have the
  /// same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id},
  /// and values are in the format tagValues/456.
  final pulumi.Input<Map<String, String>> resourceManagerTags;

  /// Creates a new [GetBackendServiceParam].
  /// [resourceManagerTags] Resource manager tags to be bound to the backend service. Tag keys and values have the
  const GetBackendServiceParam({
    required this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceManagerTags': resourceManagerTags,
    };
  }

  factory GetBackendServiceParam.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceParam(
      resourceManagerTags: pulumi.Input.fromValue((map['resourceManagerTags'] as Map).cast<String, String>()),
    );
  }
}
