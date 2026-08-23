// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AnywhereCache resources.
class AnywhereCacheState {
  /// (Optional, Deprecated)
  /// The cache admission policy dictates whether a block should be inserted upon a cache miss.
  /// Note: "admit-on-second-miss" is deprecated and will fallback to "admit-on-first-miss".
  /// Default value is `admit-on-first-miss`.
  /// Possible values are: `admit-on-first-miss`, `admit-on-second-miss`.
  ///
  /// &gt; **Warning:** `admit-on-second-miss` is deprecated and will be removed in a future major release. The backend will ignore this attribute and treat it as `admit-on-first-miss`.
  final pulumi.Input<String>? admissionPolicy;
  /// The ID of the Anywhere cache instance.
  final pulumi.Input<String>? anywhereCacheId;
  /// A reference to Bucket resource
  final pulumi.Input<String>? bucket;
  /// The creation time of the cache instance in RFC 3339 format.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Whether or not the cache ingests data as the data is written to the bucket.
  final pulumi.Input<bool>? ingestOnWrite;
  /// True if the cache instance has an active Update long-running operation.
  final pulumi.Input<bool>? pendingUpdate;
  /// The current state of the cache instance.
  final pulumi.Input<String>? state;
  /// The TTL of all cache entries in whole seconds. e.g., "7200s". It defaults to `86400s`
  final pulumi.Input<String>? ttl;
  /// The modification time of the cache instance metadata in RFC 3339 format.
  final pulumi.Input<String>? updateTime;
  /// The zone in which the cache instance needs to be created. For example, `us-central1-a.`
  final pulumi.Input<String>? zone;

  /// Creates a new [AnywhereCacheState].
  /// [admissionPolicy] (Optional, Deprecated)
  /// [anywhereCacheId] The ID of the Anywhere cache instance.
  /// [bucket] A reference to Bucket resource
  /// [createTime] The creation time of the cache instance in RFC 3339 format.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [ingestOnWrite] Whether or not the cache ingests data as the data is written to the bucket.
  /// [pendingUpdate] True if the cache instance has an active Update long-running operation.
  /// [state] The current state of the cache instance.
  /// [ttl] The TTL of all cache entries in whole seconds. e.g., "7200s". It defaults to `86400s`
  /// [updateTime] The modification time of the cache instance metadata in RFC 3339 format.
  /// [zone] The zone in which the cache instance needs to be created. For example, `us-central1-a.`
  const AnywhereCacheState({
    this.admissionPolicy,
    this.anywhereCacheId,
    this.bucket,
    this.createTime,
    this.deletionPolicy,
    this.ingestOnWrite,
    this.pendingUpdate,
    this.state,
    this.ttl,
    this.updateTime,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admissionPolicy': ?admissionPolicy,
      'anywhereCacheId': ?anywhereCacheId,
      'bucket': ?bucket,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'ingestOnWrite': ?ingestOnWrite,
      'pendingUpdate': ?pendingUpdate,
      'state': ?state,
      'ttl': ?ttl,
      'updateTime': ?updateTime,
      'zone': ?zone,
    };
  }

  factory AnywhereCacheState.fromMap(Map<String, dynamic> map) {
    return AnywhereCacheState(
      admissionPolicy: (() { final guardedValue = map['admissionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      anywhereCacheId: (() { final guardedValue = map['anywhereCacheId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingestOnWrite: (() { final guardedValue = map['ingestOnWrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pendingUpdate: (() { final guardedValue = map['pendingUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
