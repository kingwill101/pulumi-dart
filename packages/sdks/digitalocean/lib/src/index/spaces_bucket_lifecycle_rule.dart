// ignore_for_file: unused_element, unnecessary_cast

import 'spaces_bucket_lifecycle_rule_expiration.dart';
import 'spaces_bucket_lifecycle_rule_noncurrent_version_expiration.dart';

class SpacesBucketLifecycleRule {
  /// Specifies the number of days after initiating a multipart
  /// upload when the multipart upload must be completed or else Spaces will abort the upload.
  final int? abortIncompleteMultipartUploadDays;
  /// Specifies lifecycle rule status.
  final bool enabled;
  /// Specifies a time period after which applicable objects expire (documented below).
  final SpacesBucketLifecycleRuleExpiration? expiration;
  /// Unique identifier for the rule.
  final String? id;
  /// Specifies when non-current object versions expire (documented below).
  ///
  /// At least one of `expiration` or `noncurrent_version_expiration` must be specified.
  final SpacesBucketLifecycleRuleNoncurrentVersionExpiration? noncurrentVersionExpiration;
  /// Object key prefix identifying one or more objects to which the rule applies.
  final String? prefix;

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
      'expiration': ?expiration == null ? null : expiration!.toMap(),
      'id': ?id,
      'noncurrentVersionExpiration': ?noncurrentVersionExpiration == null ? null : noncurrentVersionExpiration!.toMap(),
      'prefix': ?prefix,
    };
  }

  factory SpacesBucketLifecycleRule.fromMap(Map<String, dynamic> map) {
    return SpacesBucketLifecycleRule(
      abortIncompleteMultipartUploadDays: map['abortIncompleteMultipartUploadDays'] == null ? null : map['abortIncompleteMultipartUploadDays'] as int,
      enabled: map['enabled'] as bool,
      expiration: map['expiration'] == null ? null : SpacesBucketLifecycleRuleExpiration.fromMap((map['expiration'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      noncurrentVersionExpiration: map['noncurrentVersionExpiration'] == null ? null : SpacesBucketLifecycleRuleNoncurrentVersionExpiration.fromMap((map['noncurrentVersionExpiration'] as Map).cast<String, dynamic>()),
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}

