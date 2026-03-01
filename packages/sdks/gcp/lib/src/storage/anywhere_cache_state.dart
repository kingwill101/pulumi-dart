// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AnywhereCache resources.
class AnywhereCacheState {
  /// The cache admission policy dictates whether a block should be inserted upon a cache miss.
  /// Default value is `admit-on-first-miss`.
  /// Possible values are: `admit-on-first-miss`, `admit-on-second-miss`.
  final pulumi.Input<String>? admissionPolicy;
  /// The ID of the Anywhere cache instance.
  final pulumi.Input<String>? anywhereCacheId;
  /// A reference to Bucket resource
  final pulumi.Input<String>? bucket;
  /// The creation time of the cache instance in RFC 3339 format.
  final pulumi.Input<String>? createTime;
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
  /// [admissionPolicy] The cache admission policy dictates whether a block should be inserted upon a cache miss.
  /// [anywhereCacheId] The ID of the Anywhere cache instance.
  /// [bucket] A reference to Bucket resource
  /// [createTime] The creation time of the cache instance in RFC 3339 format.
  /// [pendingUpdate] True if the cache instance has an active Update long-running operation.
  /// [state] The current state of the cache instance.
  /// [ttl] The TTL of all cache entries in whole seconds. e.g., "7200s". It defaults to `86400s`
  /// [updateTime] The modification time of the cache instance metadata in RFC 3339 format.
  /// [zone] The zone in which the cache instance needs to be created. For example, `us-central1-a.`
  AnywhereCacheState({
    pulumi.Output<String>? admissionPolicy,
    pulumi.Output<String>? anywhereCacheId,
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? pendingUpdate,
    pulumi.Output<String>? state,
    pulumi.Output<String>? ttl,
    pulumi.Output<String>? updateTime,
    pulumi.Output<String>? zone,
  }) :
      admissionPolicy = pulumi.Input.asOptionalInput<String>(admissionPolicy),
      anywhereCacheId = pulumi.Input.asOptionalInput<String>(anywhereCacheId),
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      pendingUpdate = pulumi.Input.asOptionalInput<bool>(pendingUpdate),
      state = pulumi.Input.asOptionalInput<String>(state),
      ttl = pulumi.Input.asOptionalInput<String>(ttl),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admissionPolicy': ?admissionPolicy,
      'anywhereCacheId': ?anywhereCacheId,
      'bucket': ?bucket,
      'createTime': ?createTime,
      'pendingUpdate': ?pendingUpdate,
      'state': ?state,
      'ttl': ?ttl,
      'updateTime': ?updateTime,
      'zone': ?zone,
    };
  }

  factory AnywhereCacheState.fromMap(Map<String, dynamic> map) {
    return AnywhereCacheState(
      admissionPolicy: map['admissionPolicy'] == null ? null : pulumi.Output.create<String>(map['admissionPolicy'] as String),
      anywhereCacheId: map['anywhereCacheId'] == null ? null : pulumi.Output.create<String>(map['anywhereCacheId'] as String),
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      pendingUpdate: map['pendingUpdate'] == null ? null : pulumi.Output.create<bool>(map['pendingUpdate'] as bool),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<String>(map['ttl'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

