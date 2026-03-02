// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The action to take.
class BucketLifecycleRuleItemAction {
  /// Target storage class. Required iff the type of the action is SetStorageClass.
  final pulumi.Input<String>? storageClass;
  /// Type of the action. Currently, only Delete, SetStorageClass, and AbortIncompleteMultipartUpload are supported.
  final pulumi.Input<String>? type;

  /// Creates a new [BucketLifecycleRuleItemAction].
  /// [storageClass] Target storage class. Required iff the type of the action is SetStorageClass.
  /// [type] Type of the action. Currently, only Delete, SetStorageClass, and AbortIncompleteMultipartUpload are supported.
  BucketLifecycleRuleItemAction({
    this.storageClass,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageClass': ?storageClass,
      'type': ?type,
    };
  }

  factory BucketLifecycleRuleItemAction.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRuleItemAction(
      storageClass: map['storageClass'] == null ? null : (map['storageClass']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

