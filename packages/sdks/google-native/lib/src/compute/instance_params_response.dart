// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional instance params.
class InstanceParamsResponse {
  /// Resource manager tags to be bound to the instance. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  final pulumi.Input<Map<String, String>> resourceManagerTags;

  /// Creates a new [InstanceParamsResponse].
  /// [resourceManagerTags] Resource manager tags to be bound to the instance. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  const InstanceParamsResponse({
    required this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceManagerTags': resourceManagerTags,
    };
  }

  factory InstanceParamsResponse.fromMap(Map<String, dynamic> map) {
    return InstanceParamsResponse(
      resourceManagerTags: pulumi.Input.fromValue((map['resourceManagerTags'] as Map).cast<String, String>()),
    );
  }
}
