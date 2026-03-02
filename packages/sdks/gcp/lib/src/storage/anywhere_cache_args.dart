// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_anywhere_cache_anywhere_cache_args_doc}
/// The set of arguments for AnywhereCache.
/// {@endtemplate}
/// {@macro pulumi_storage_anywhere_cache_anywhere_cache_args_doc}
class AnywhereCacheArgs {
  /// The cache admission policy dictates whether a block should be inserted upon a cache miss.
  /// Default value is `admit-on-first-miss`.
  /// Possible values are: `admit-on-first-miss`, `admit-on-second-miss`.
  final pulumi.Input<String>? admissionPolicy;
  /// A reference to Bucket resource
  final pulumi.Input<String> bucket;
  /// The TTL of all cache entries in whole seconds. e.g., "7200s". It defaults to `86400s`
  final pulumi.Input<String>? ttl;
  /// The zone in which the cache instance needs to be created. For example, `us-central1-a.`
  final pulumi.Input<String> zone;

  /// Creates a new [AnywhereCacheArgs].
  /// [admissionPolicy] The cache admission policy dictates whether a block should be inserted upon a cache miss.
  /// [bucket] A reference to Bucket resource
  /// [ttl] The TTL of all cache entries in whole seconds. e.g., "7200s". It defaults to `86400s`
  /// [zone] The zone in which the cache instance needs to be created. For example, `us-central1-a.`
  AnywhereCacheArgs({
    this.admissionPolicy,
    required this.bucket,
    this.ttl,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admissionPolicy': ?admissionPolicy,
      'bucket': bucket,
      'ttl': ?ttl,
      'zone': zone,
    };
  }

  factory AnywhereCacheArgs.fromMap(Map<String, dynamic> map) {
    return AnywhereCacheArgs(
      admissionPolicy: map['admissionPolicy'] == null ? null : (map['admissionPolicy']! as String).input(),
      bucket: (map['bucket'] as String).input(),
      ttl: map['ttl'] == null ? null : (map['ttl']! as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

