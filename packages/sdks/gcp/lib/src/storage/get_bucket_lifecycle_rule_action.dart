// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketLifecycleRuleAction {
  /// The target Storage Class of objects affected by this Lifecycle Rule. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE.
  final pulumi.Input<String> storageClass;

  /// The type of the action of this Lifecycle Rule. Supported values include: Delete, SetStorageClass and AbortIncompleteMultipartUpload.
  final pulumi.Input<String> type;

  /// Creates a new [GetBucketLifecycleRuleAction].
  /// [storageClass] The target Storage Class of objects affected by this Lifecycle Rule. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE.
  /// [type] The type of the action of this Lifecycle Rule. Supported values include: Delete, SetStorageClass and AbortIncompleteMultipartUpload.
  GetBucketLifecycleRuleAction({
    required this.storageClass,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'storageClass': storageClass, 'type': type};
  }

  factory GetBucketLifecycleRuleAction.fromMap(Map<String, dynamic> map) {
    return GetBucketLifecycleRuleAction(
      storageClass: pulumi.Input.fromValue(map['storageClass'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
