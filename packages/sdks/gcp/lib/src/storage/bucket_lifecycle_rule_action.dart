// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLifecycleRuleAction {
  /// The target [Storage Class](https://cloud.google.com/storage/docs/storage-classes) of objects affected by this Lifecycle Rule. Supported values include: `STANDARD`, `MULTI_REGIONAL`, `REGIONAL`, `NEARLINE`, `COLDLINE`, `ARCHIVE`.
  final pulumi.Input<String>? storageClass;
  /// The type of the action of this Lifecycle Rule. Supported values include: `Delete`, `SetStorageClass` and `AbortIncompleteMultipartUpload`.
  final pulumi.Input<String> type;

  /// Creates a new [BucketLifecycleRuleAction].
  /// [storageClass] The target [Storage Class](https://cloud.google.com/storage/docs/storage-classes) of objects affected by this Lifecycle Rule. Supported values include: `STANDARD`, `MULTI_REGIONAL`, `REGIONAL`, `NEARLINE`, `COLDLINE`, `ARCHIVE`.
  /// [type] The type of the action of this Lifecycle Rule. Supported values include: `Delete`, `SetStorageClass` and `AbortIncompleteMultipartUpload`.
  BucketLifecycleRuleAction({
    this.storageClass,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageClass': ?storageClass,
      'type': type,
    };
  }

  factory BucketLifecycleRuleAction.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRuleAction(
      storageClass: map['storageClass'] == null ? null : (map['storageClass'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

