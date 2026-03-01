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
    pulumi.Output<String>? name,
    required pulumi.Output<String> permissions,
    required pulumi.Output<String> redisCacheId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      permissions = pulumi.Input.asInput<String>(permissions),
      redisCacheId = pulumi.Input.asInput<String>(redisCacheId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'permissions': permissions,
      'redisCacheId': redisCacheId,
    };
  }

  factory CacheAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return CacheAccessPolicyArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      permissions: pulumi.Output.create<String>(map['permissions'] as String),
      redisCacheId: pulumi.Output.create<String>(map['redisCacheId'] as String),
    );
  }
}

