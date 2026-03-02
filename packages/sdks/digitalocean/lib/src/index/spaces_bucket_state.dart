// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spaces_bucket_cors_rule.dart';
import 'spaces_bucket_lifecycle_rule.dart';
import 'spaces_bucket_versioning.dart';

/// Input properties used for looking up and filtering SpacesBucket resources.
class SpacesBucketState {
  /// Canned ACL applied on bucket creation: `private` or `public-read` (Defaults to `private`)
  final pulumi.Input<String>? acl;
  /// The FQDN of the bucket (e.g. bucket-name.nyc3.digitaloceanspaces.com)
  final pulumi.Input<String>? bucketDomainName;
  /// The uniform resource name for the bucket
  final pulumi.Input<String>? bucketUrn;
  /// A rule of Cross-Origin Resource Sharing (documented below).
  final pulumi.Input<List<SpacesBucketCorsRule>>? corsRules;
  /// The FQDN of the bucket without the bucket name (e.g. nyc3.digitaloceanspaces.com)
  final pulumi.Input<String>? endpoint;
  /// Unless `true`, the bucket will only be destroyed if empty (Defaults to `false`)
  final pulumi.Input<bool>? forceDestroy;
  /// A configuration of object lifecycle management (documented below).
  final pulumi.Input<List<SpacesBucketLifecycleRule>>? lifecycleRules;
  /// The name of the bucket
  final pulumi.Input<String>? name;
  /// The region where the bucket resides (Defaults to `nyc3`)
  final pulumi.Input<String>? region;
  /// A state of versioning (documented below)
  final pulumi.Input<SpacesBucketVersioning>? versioning;

  /// Creates a new [SpacesBucketState].
  /// [acl] Canned ACL applied on bucket creation: `private` or `public-read` (Defaults to `private`)
  /// [bucketDomainName] The FQDN of the bucket (e.g. bucket-name.nyc3.digitaloceanspaces.com)
  /// [bucketUrn] The uniform resource name for the bucket
  /// [corsRules] A rule of Cross-Origin Resource Sharing (documented below).
  /// [endpoint] The FQDN of the bucket without the bucket name (e.g. nyc3.digitaloceanspaces.com)
  /// [forceDestroy] Unless `true`, the bucket will only be destroyed if empty (Defaults to `false`)
  /// [lifecycleRules] A configuration of object lifecycle management (documented below).
  /// [name] The name of the bucket
  /// [region] The region where the bucket resides (Defaults to `nyc3`)
  /// [versioning] A state of versioning (documented below)
  SpacesBucketState({
    this.acl,
    this.bucketDomainName,
    this.bucketUrn,
    this.corsRules,
    this.endpoint,
    this.forceDestroy,
    this.lifecycleRules,
    this.name,
    this.region,
    this.versioning,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': ?acl,
      'bucketDomainName': ?bucketDomainName,
      'bucketUrn': ?bucketUrn,
      'corsRules': ?pulumi.Input.mapOptionalInputValue<List<SpacesBucketCorsRule>, List<Map<String, dynamic>>>(corsRules, (value) => pulumi.Input.encodeList<SpacesBucketCorsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'endpoint': ?endpoint,
      'forceDestroy': ?forceDestroy,
      'lifecycleRules': ?pulumi.Input.mapOptionalInputValue<List<SpacesBucketLifecycleRule>, List<Map<String, dynamic>>>(lifecycleRules, (value) => pulumi.Input.encodeList<SpacesBucketLifecycleRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'versioning': ?pulumi.Input.mapOptionalInputValue<SpacesBucketVersioning, Map<String, dynamic>>(versioning, (value) => value.toMap()),
    };
  }

  factory SpacesBucketState.fromMap(Map<String, dynamic> map) {
    return SpacesBucketState(
      acl: map['acl'] == null ? null : (map['acl'] as String).input(),
      bucketDomainName: map['bucketDomainName'] == null ? null : (map['bucketDomainName'] as String).input(),
      bucketUrn: map['bucketUrn'] == null ? null : (map['bucketUrn'] as String).input(),
      corsRules: map['corsRules'] == null ? null : (pulumi.Input.decodeList<SpacesBucketCorsRule>(map['corsRules'], (value) => SpacesBucketCorsRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      forceDestroy: map['forceDestroy'] == null ? null : (map['forceDestroy'] as bool).input(),
      lifecycleRules: map['lifecycleRules'] == null ? null : (pulumi.Input.decodeList<SpacesBucketLifecycleRule>(map['lifecycleRules'], (value) => SpacesBucketLifecycleRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      versioning: map['versioning'] == null ? null : (SpacesBucketVersioning.fromMap((map['versioning'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

