// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CacheAccessPolicyAssignment resources.
class CacheAccessPolicyAssignmentState {
  /// The name of the Access Policy to be assigned. Changing this forces a new Redis Cache Access Policy Assignment to be created.
  final pulumi.Input<String>? accessPolicyName;
  /// The name of the Redis Cache Access Policy Assignment. Changing this forces a new Redis Cache Access Policy Assignment to be created.
  final pulumi.Input<String>? name;
  /// The principal ID to be assigned the Access Policy. Changing this forces a new Redis Cache Access Policy Assignment to be created.
  final pulumi.Input<String>? objectId;
  /// The alias of the principal ID. User-friendly name for object ID. Also represents username for token based authentication. Changing this forces a new Redis Cache Access Policy Assignment to be created.
  final pulumi.Input<String>? objectIdAlias;
  /// The ID of the Redis Cache. Changing this forces a new Redis Cache Access Policy Assignment to be created.
  final pulumi.Input<String>? redisCacheId;

  /// Creates a new [CacheAccessPolicyAssignmentState].
  /// [accessPolicyName] The name of the Access Policy to be assigned. Changing this forces a new Redis Cache Access Policy Assignment to be created.
  /// [name] The name of the Redis Cache Access Policy Assignment. Changing this forces a new Redis Cache Access Policy Assignment to be created.
  /// [objectId] The principal ID to be assigned the Access Policy. Changing this forces a new Redis Cache Access Policy Assignment to be created.
  /// [objectIdAlias] The alias of the principal ID. User-friendly name for object ID. Also represents username for token based authentication. Changing this forces a new Redis Cache Access Policy Assignment to be created.
  /// [redisCacheId] The ID of the Redis Cache. Changing this forces a new Redis Cache Access Policy Assignment to be created.
  CacheAccessPolicyAssignmentState({
    pulumi.Output<String>? accessPolicyName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? objectId,
    pulumi.Output<String>? objectIdAlias,
    pulumi.Output<String>? redisCacheId,
  }) :
      accessPolicyName = pulumi.Input.asOptionalInput<String>(accessPolicyName),
      name = pulumi.Input.asOptionalInput<String>(name),
      objectId = pulumi.Input.asOptionalInput<String>(objectId),
      objectIdAlias = pulumi.Input.asOptionalInput<String>(objectIdAlias),
      redisCacheId = pulumi.Input.asOptionalInput<String>(redisCacheId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyName': ?accessPolicyName,
      'name': ?name,
      'objectId': ?objectId,
      'objectIdAlias': ?objectIdAlias,
      'redisCacheId': ?redisCacheId,
    };
  }

  factory CacheAccessPolicyAssignmentState.fromMap(Map<String, dynamic> map) {
    return CacheAccessPolicyAssignmentState(
      accessPolicyName: map['accessPolicyName'] == null ? null : pulumi.Output.create<String>(map['accessPolicyName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      objectId: map['objectId'] == null ? null : pulumi.Output.create<String>(map['objectId'] as String),
      objectIdAlias: map['objectIdAlias'] == null ? null : pulumi.Output.create<String>(map['objectIdAlias'] as String),
      redisCacheId: map['redisCacheId'] == null ? null : pulumi.Output.create<String>(map['redisCacheId'] as String),
    );
  }
}

