// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_cache_access_policy_cache_access_policy_args_doc}
/// The set of arguments for CacheAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_redis_cache_access_policy_cache_access_policy_args_doc}
class CacheAccessPolicyArgs {
  /// The name of the Redis Cache Access Policy. Changing this forces a new Redis Cache Access Policy to be created.
  final pulumi.Input<String>? name;
  /// Permissions that are going to be assigned to this Redis Cache Access Policy.
  final pulumi.Input<String> permissions;
  /// The ID of the Redis Cache. Changing this forces a new Redis Cache Access Policy to be created.
  final pulumi.Input<String> redisCacheId;

  /// Creates a new [CacheAccessPolicyArgs].
  /// [name] The name of the Redis Cache Access Policy. Changing this forces a new Redis Cache Access Policy to be created.
  /// [permissions] Permissions that are going to be assigned to this Redis Cache Access Policy.
  /// [redisCacheId] The ID of the Redis Cache. Changing this forces a new Redis Cache Access Policy to be created.
  CacheAccessPolicyArgs({
    this.name,
    required this.permissions,
    required this.redisCacheId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'permissions': permissions,
      'redisCacheId': redisCacheId,
    };
  }

  factory CacheAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return CacheAccessPolicyArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissions: pulumi.Input.fromValue(map['permissions'] as String),
      redisCacheId: pulumi.Input.fromValue(map['redisCacheId'] as String),
    );
  }
}

