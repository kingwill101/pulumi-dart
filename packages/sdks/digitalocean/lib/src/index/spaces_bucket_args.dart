// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spaces_bucket_cors_rule.dart';
import 'spaces_bucket_lifecycle_rule.dart';
import 'spaces_bucket_versioning.dart';

/// {@template pulumi_index_spaces_bucket_spaces_bucket_args_doc}
/// The set of arguments for SpacesBucket.
/// {@endtemplate}
/// {@macro pulumi_index_spaces_bucket_spaces_bucket_args_doc}
class SpacesBucketArgs {
  /// Canned ACL applied on bucket creation: `private` or `public-read` (Defaults to `private`)
  final pulumi.Input<String>? acl;
  /// A rule of Cross-Origin Resource Sharing (documented below).
  final pulumi.Input<List<SpacesBucketCorsRule>>? corsRules;
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

  /// Creates a new [SpacesBucketArgs].
  /// [acl] Canned ACL applied on bucket creation: `private` or `public-read` (Defaults to `private`)
  /// [corsRules] A rule of Cross-Origin Resource Sharing (documented below).
  /// [forceDestroy] Unless `true`, the bucket will only be destroyed if empty (Defaults to `false`)
  /// [lifecycleRules] A configuration of object lifecycle management (documented below).
  /// [name] The name of the bucket
  /// [region] The region where the bucket resides (Defaults to `nyc3`)
  /// [versioning] A state of versioning (documented below)
  SpacesBucketArgs({
    this.acl,
    this.corsRules,
    this.forceDestroy,
    this.lifecycleRules,
    this.name,
    this.region,
    this.versioning,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': ?acl,
      'corsRules': ?pulumi.Input.mapOptionalInputValue<List<SpacesBucketCorsRule>, List<Map<String, dynamic>>>(corsRules, (value) => pulumi.Input.encodeList<SpacesBucketCorsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forceDestroy': ?forceDestroy,
      'lifecycleRules': ?pulumi.Input.mapOptionalInputValue<List<SpacesBucketLifecycleRule>, List<Map<String, dynamic>>>(lifecycleRules, (value) => pulumi.Input.encodeList<SpacesBucketLifecycleRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'versioning': ?pulumi.Input.mapOptionalInputValue<SpacesBucketVersioning, Map<String, dynamic>>(versioning, (value) => value.toMap()),
    };
  }

  factory SpacesBucketArgs.fromMap(Map<String, dynamic> map) {
    return SpacesBucketArgs(
      acl: map['acl'] == null ? null : (map['acl']! as String).input(),
      corsRules: map['corsRules'] == null ? null : (pulumi.Input.decodeList<SpacesBucketCorsRule>(map['corsRules']!, (value) => SpacesBucketCorsRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      forceDestroy: map['forceDestroy'] == null ? null : (map['forceDestroy']! as bool).input(),
      lifecycleRules: map['lifecycleRules'] == null ? null : (pulumi.Input.decodeList<SpacesBucketLifecycleRule>(map['lifecycleRules']!, (value) => SpacesBucketLifecycleRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      versioning: map['versioning'] == null ? null : (SpacesBucketVersioning.fromMap((map['versioning']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

