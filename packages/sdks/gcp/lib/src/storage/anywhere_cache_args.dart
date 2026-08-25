// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_anywhere_cache_anywhere_cache_args_doc}
/// The set of arguments for AnywhereCache.
/// {@endtemplate}
/// {@macro pulumi_storage_anywhere_cache_anywhere_cache_args_doc}
class AnywhereCacheArgs {
  /// (Optional, Deprecated)
  /// The cache admission policy dictates whether a block should be inserted upon a cache miss.
  /// Note: "admit-on-second-miss" is deprecated and will fallback to "admit-on-first-miss".
  /// Default value is `admit-on-first-miss`.
  /// Possible values are: `admit-on-first-miss`, `admit-on-second-miss`.
  ///
  /// &gt; **Warning:** `admit-on-second-miss` is deprecated and will be removed in a future major release. The backend will ignore this attribute and treat it as `admit-on-first-miss`.
  final pulumi.Input<String?>? admissionPolicy;
  /// A reference to Bucket resource
  final pulumi.Input<String> bucket;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Whether or not the cache ingests data as the data is written to the bucket.
  final pulumi.Input<bool?>? ingestOnWrite;
  /// The TTL of all cache entries in whole seconds. e.g., "7200s". It defaults to `86400s`
  final pulumi.Input<String?>? ttl;
  /// The zone in which the cache instance needs to be created. For example, `us-central1-a.`
  final pulumi.Input<String> zone;

  /// Creates a new [AnywhereCacheArgs].
  /// [admissionPolicy] (Optional, Deprecated)
  /// [bucket] A reference to Bucket resource
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [ingestOnWrite] Whether or not the cache ingests data as the data is written to the bucket.
  /// [ttl] The TTL of all cache entries in whole seconds. e.g., "7200s". It defaults to `86400s`
  /// [zone] The zone in which the cache instance needs to be created. For example, `us-central1-a.`
  const AnywhereCacheArgs({
    this.admissionPolicy,
    required this.bucket,
    this.deletionPolicy,
    this.ingestOnWrite,
    this.ttl,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admissionPolicy': ?admissionPolicy,
      'bucket': bucket,
      'deletionPolicy': ?deletionPolicy,
      'ingestOnWrite': ?ingestOnWrite,
      'ttl': ?ttl,
      'zone': zone,
    };
  }

  factory AnywhereCacheArgs.fromMap(Map<String, dynamic> map) {
    return AnywhereCacheArgs(
      admissionPolicy: (() { final guardedValue = map['admissionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingestOnWrite: (() { final guardedValue = map['ingestOnWrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
