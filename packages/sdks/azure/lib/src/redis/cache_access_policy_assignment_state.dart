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
  const CacheAccessPolicyAssignmentState({
    this.accessPolicyName,
    this.name,
    this.objectId,
    this.objectIdAlias,
    this.redisCacheId,
  });

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
      accessPolicyName: (() { final guardedValue = map['accessPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectIdAlias: (() { final guardedValue = map['objectIdAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redisCacheId: (() { final guardedValue = map['redisCacheId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

