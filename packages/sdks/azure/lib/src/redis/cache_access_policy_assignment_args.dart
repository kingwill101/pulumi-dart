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
  CacheAccessPolicyAssignmentArgs({
    required pulumi.Output<String> accessPolicyName,
    pulumi.Output<String>? name,
    required pulumi.Output<String> objectId,
    required pulumi.Output<String> objectIdAlias,
    required pulumi.Output<String> redisCacheId,
  }) :
      accessPolicyName = pulumi.Input.asInput<String>(accessPolicyName),
      name = pulumi.Input.asOptionalInput<String>(name),
      objectId = pulumi.Input.asInput<String>(objectId),
      objectIdAlias = pulumi.Input.asInput<String>(objectIdAlias),
      redisCacheId = pulumi.Input.asInput<String>(redisCacheId);

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
      accessPolicyName: pulumi.Output.create<String>(map['accessPolicyName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      objectId: pulumi.Output.create<String>(map['objectId'] as String),
      objectIdAlias: pulumi.Output.create<String>(map['objectIdAlias'] as String),
      redisCacheId: pulumi.Output.create<String>(map['redisCacheId'] as String),
    );
  }
}

