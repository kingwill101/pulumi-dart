// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The action to take.
class BucketLifecycleRuleItemActionResponse {
  /// Target storage class. Required iff the type of the action is SetStorageClass.
  final pulumi.Input<String> storageClass;

  /// Type of the action. Currently, only Delete, SetStorageClass, and AbortIncompleteMultipartUpload are supported.
  final pulumi.Input<String> type;

  /// Creates a new [BucketLifecycleRuleItemActionResponse].
  /// [storageClass] Target storage class. Required iff the type of the action is SetStorageClass.
  /// [type] Type of the action. Currently, only Delete, SetStorageClass, and AbortIncompleteMultipartUpload are supported.
  BucketLifecycleRuleItemActionResponse({
    required this.storageClass,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'storageClass': storageClass, 'type': type};
  }

  factory BucketLifecycleRuleItemActionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketLifecycleRuleItemActionResponse(
      storageClass: pulumi.Input.fromValue(map['storageClass'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
