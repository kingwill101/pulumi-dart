// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_storage_bucket_lifecycle_rule_expiration.dart';
import 'object_storage_bucket_lifecycle_rule_noncurrent_version_expiration.dart';

class ObjectStorageBucketLifecycleRule {
  /// Specifies the number of days after initiating a multipart upload when the multipart upload must be completed.
  ///
  /// * `expiration` - (Optional) Specifies a period in the object's expire.
  ///
  /// * `noncurrent_version_expiration` - (Optional) Specifies when non-current object versions expire.
  final pulumi.Input<int>? abortIncompleteMultipartUploadDays;

  /// Specifies whether the lifecycle rule is active.
  final pulumi.Input<bool> enabled;

  /// Specifies a period in the object's expire.
  final pulumi.Input<ObjectStorageBucketLifecycleRuleExpiration>? expiration;

  /// The unique identifier for the rule.
  final pulumi.Input<String>? id;

  /// Specifies when non-current object versions expire.
  final pulumi.Input<
    ObjectStorageBucketLifecycleRuleNoncurrentVersionExpiration
  >?
  noncurrentVersionExpiration;

  /// The object key prefix identifying one or more objects to which the rule applies.
  final pulumi.Input<String>? prefix;

  /// Creates a new [ObjectStorageBucketLifecycleRule].
  /// [abortIncompleteMultipartUploadDays] Specifies the number of days after initiating a multipart upload when the multipart upload must be completed.
  /// [enabled] Specifies whether the lifecycle rule is active.
  /// [expiration] Specifies a period in the object's expire.
  /// [id] The unique identifier for the rule.
  /// [noncurrentVersionExpiration] Specifies when non-current object versions expire.
  /// [prefix] The object key prefix identifying one or more objects to which the rule applies.
  ObjectStorageBucketLifecycleRule({
    this.abortIncompleteMultipartUploadDays,
    required this.enabled,
    this.expiration,
    this.id,
    this.noncurrentVersionExpiration,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abortIncompleteMultipartUploadDays': ?abortIncompleteMultipartUploadDays,
      'enabled': enabled,
      'expiration':
          ?pulumi.Input.mapOptionalInputValue<
            ObjectStorageBucketLifecycleRuleExpiration,
            Map<String, dynamic>
          >(expiration, (value) => value.toMap()),
      'id': ?id,
      'noncurrentVersionExpiration':
          ?pulumi.Input.mapOptionalInputValue<
            ObjectStorageBucketLifecycleRuleNoncurrentVersionExpiration,
            Map<String, dynamic>
          >(noncurrentVersionExpiration, (value) => value.toMap()),
      'prefix': ?prefix,
    };
  }

  factory ObjectStorageBucketLifecycleRule.fromMap(Map<String, dynamic> map) {
    return ObjectStorageBucketLifecycleRule(
      abortIncompleteMultipartUploadDays: (() {
        final guardedValue = map['abortIncompleteMultipartUploadDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      expiration: (() {
        final guardedValue = map['expiration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ObjectStorageBucketLifecycleRuleExpiration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      noncurrentVersionExpiration: (() {
        final guardedValue = map['noncurrentVersionExpiration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ObjectStorageBucketLifecycleRuleNoncurrentVersionExpiration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      prefix: (() {
        final guardedValue = map['prefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
