// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spaces_bucket_lifecycle_rule_expiration.dart';
import 'spaces_bucket_lifecycle_rule_noncurrent_version_expiration.dart';

class SpacesBucketLifecycleRule {
  /// Specifies the number of days after initiating a multipart
  /// upload when the multipart upload must be completed or else Spaces will abort the upload.
  final pulumi.Input<int>? abortIncompleteMultipartUploadDays;
  /// Specifies lifecycle rule status.
  final pulumi.Input<bool> enabled;
  /// Specifies a time period after which applicable objects expire (documented below).
  final pulumi.Input<SpacesBucketLifecycleRuleExpiration>? expiration;
  /// Unique identifier for the rule.
  final pulumi.Input<String>? id;
  /// Specifies when non-current object versions expire (documented below).
  ///
  /// At least one of `expiration` or `noncurrent_version_expiration` must be specified.
  final pulumi.Input<SpacesBucketLifecycleRuleNoncurrentVersionExpiration>? noncurrentVersionExpiration;
  /// Object key prefix identifying one or more objects to which the rule applies.
  final pulumi.Input<String>? prefix;

  /// Creates a new [SpacesBucketLifecycleRule].
  /// [abortIncompleteMultipartUploadDays] Specifies the number of days after initiating a multipart
  /// [enabled] Specifies lifecycle rule status.
  /// [expiration] Specifies a time period after which applicable objects expire (documented below).
  /// [id] Unique identifier for the rule.
  /// [noncurrentVersionExpiration] Specifies when non-current object versions expire (documented below).
  /// [prefix] Object key prefix identifying one or more objects to which the rule applies.
  SpacesBucketLifecycleRule({
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
      'expiration': ?pulumi.Input.mapOptionalInputValue<SpacesBucketLifecycleRuleExpiration, Map<String, dynamic>>(expiration, (value) => value.toMap()),
      'id': ?id,
      'noncurrentVersionExpiration': ?pulumi.Input.mapOptionalInputValue<SpacesBucketLifecycleRuleNoncurrentVersionExpiration, Map<String, dynamic>>(noncurrentVersionExpiration, (value) => value.toMap()),
      'prefix': ?prefix,
    };
  }

  factory SpacesBucketLifecycleRule.fromMap(Map<String, dynamic> map) {
    return SpacesBucketLifecycleRule(
      abortIncompleteMultipartUploadDays: (() { final guardedValue = map['abortIncompleteMultipartUploadDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpacesBucketLifecycleRuleExpiration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      noncurrentVersionExpiration: (() { final guardedValue = map['noncurrentVersionExpiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpacesBucketLifecycleRuleNoncurrentVersionExpiration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

