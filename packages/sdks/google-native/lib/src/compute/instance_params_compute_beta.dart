// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional instance params.
class InstanceParamsComputeBeta {
  /// Resource manager tags to be bound to the instance. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  final pulumi.Input<Map<String, String>>? resourceManagerTags;

  /// Creates a new [InstanceParamsComputeBeta].
  /// [resourceManagerTags] Resource manager tags to be bound to the instance. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  InstanceParamsComputeBeta({this.resourceManagerTags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceManagerTags': ?resourceManagerTags};
  }

  factory InstanceParamsComputeBeta.fromMap(Map<String, dynamic> map) {
    return InstanceParamsComputeBeta(
      resourceManagerTags: (() {
        final guardedValue = map['resourceManagerTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
