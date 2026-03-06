// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_cache_access_policy_assignment_cache_access_policy_assignment_args_doc}
/// The set of arguments for CacheAccessPolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_redis_cache_access_policy_assignment_cache_access_policy_assignment_args_doc}
class CacheAccessPolicyAssignmentArgs {
  /// The name of the Access Policy to be assigned. Changing this forces a new Redis Cache Access Policy Assignment to be created.
  final pulumi.Input<String> accessPolicyName;
  /// The name of the Redis Cache Access Policy Assignment. Changing this forces a new Redis Cache Access Policy Assignment to be created.
  final pulumi.Input<String>? name;
  /// The principal ID to be assigned the Access Policy. Changing this forces a new Redis Cache Access Policy Assignment to be created.
  final pulumi.Input<String> objectId;
  /// The alias of the principal ID. User-friendly name for object ID. Also represents username for token based authentication. Changing this forces a new Redis Cache Access Policy Assignment to be created.
  final pulumi.Input<String> objectIdAlias;
  /// The ID of the Redis Cache. Changing this forces a new Redis Cache Access Policy Assignment to be created.
  final pulumi.Input<String> redisCacheId;

  /// Creates a new [CacheAccessPolicyAssignmentArgs].
  /// [accessPolicyName] The name of the Access Policy to be assigned. Changing this forces a new Redis Cache Access Policy Assignment to be created.
  /// [name] The name of the Redis Cache Access Policy Assignment. Changing this forces a new Redis Cache Access Policy Assignment to be created.
  /// [objectId] The principal ID to be assigned the Access Policy. Changing this forces a new Redis Cache Access Policy Assignment to be created.
  /// [objectIdAlias] The alias of the principal ID. User-friendly name for object ID. Also represents username for token based authentication. Changing this forces a new Redis Cache Access Policy Assignment to be created.
  /// [redisCacheId] The ID of the Redis Cache. Changing this forces a new Redis Cache Access Policy Assignment to be created.
  const CacheAccessPolicyAssignmentArgs({
    required this.accessPolicyName,
    this.name,
    required this.objectId,
    required this.objectIdAlias,
    required this.redisCacheId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyName': accessPolicyName,
      'name': ?name,
      'objectId': objectId,
      'objectIdAlias': objectIdAlias,
      'redisCacheId': redisCacheId,
    };
  }

  factory CacheAccessPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return CacheAccessPolicyAssignmentArgs(
      accessPolicyName: pulumi.Input.fromValue(map['accessPolicyName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: pulumi.Input.fromValue(map['objectId'] as String),
      objectIdAlias: pulumi.Input.fromValue(map['objectIdAlias'] as String),
      redisCacheId: pulumi.Input.fromValue(map['redisCacheId'] as String),
    );
  }
}

