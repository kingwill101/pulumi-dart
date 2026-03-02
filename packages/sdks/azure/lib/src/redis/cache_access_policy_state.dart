// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CacheAccessPolicy resources.
class CacheAccessPolicyState {
  /// The name of the Redis Cache Access Policy. Changing this forces a new Redis Cache Access Policy to be created.
  final pulumi.Input<String>? name;
  /// Permissions that are going to be assigned to this Redis Cache Access Policy.
  final pulumi.Input<String>? permissions;
  /// The ID of the Redis Cache. Changing this forces a new Redis Cache Access Policy to be created.
  final pulumi.Input<String>? redisCacheId;

  /// Creates a new [CacheAccessPolicyState].
  /// [name] The name of the Redis Cache Access Policy. Changing this forces a new Redis Cache Access Policy to be created.
  /// [permissions] Permissions that are going to be assigned to this Redis Cache Access Policy.
  /// [redisCacheId] The ID of the Redis Cache. Changing this forces a new Redis Cache Access Policy to be created.
  CacheAccessPolicyState({
    this.name,
    this.permissions,
    this.redisCacheId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'permissions': ?permissions,
      'redisCacheId': ?redisCacheId,
    };
  }

  factory CacheAccessPolicyState.fromMap(Map<String, dynamic> map) {
    return CacheAccessPolicyState(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      permissions: map['permissions'] == null ? null : (map['permissions']! as String).input(),
      redisCacheId: map['redisCacheId'] == null ? null : (map['redisCacheId']! as String).input(),
    );
  }
}

