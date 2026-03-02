// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SpringCloudAppRedisAssociation resources.
class SpringCloudAppRedisAssociationState {
  /// Specifies the name of the Spring Cloud Application Association. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the Redis Cache access key.
  final pulumi.Input<String>? redisAccessKey;
  /// Specifies the Redis Cache resource ID. Changing this forces a new resource to be created.
  final pulumi.Input<String>? redisCacheId;
  /// Specifies the Spring Cloud Application resource ID in which the Association is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? springCloudAppId;
  /// Should SSL be used when connecting to Redis? Defaults to `true`.
  final pulumi.Input<bool>? sslEnabled;

  /// Creates a new [SpringCloudAppRedisAssociationState].
  /// [name] Specifies the name of the Spring Cloud Application Association. Changing this forces a new resource to be created.
  /// [redisAccessKey] Specifies the Redis Cache access key.
  /// [redisCacheId] Specifies the Redis Cache resource ID. Changing this forces a new resource to be created.
  /// [springCloudAppId] Specifies the Spring Cloud Application resource ID in which the Association is created. Changing this forces a new resource to be created.
  /// [sslEnabled] Should SSL be used when connecting to Redis? Defaults to `true`.
  SpringCloudAppRedisAssociationState({
    this.name,
    this.redisAccessKey,
    this.redisCacheId,
    this.springCloudAppId,
    this.sslEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'redisAccessKey': ?redisAccessKey,
      'redisCacheId': ?redisCacheId,
      'springCloudAppId': ?springCloudAppId,
      'sslEnabled': ?sslEnabled,
    };
  }

  factory SpringCloudAppRedisAssociationState.fromMap(Map<String, dynamic> map) {
    return SpringCloudAppRedisAssociationState(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      redisAccessKey: map['redisAccessKey'] == null ? null : (map['redisAccessKey']! as String).input(),
      redisCacheId: map['redisCacheId'] == null ? null : (map['redisCacheId']! as String).input(),
      springCloudAppId: map['springCloudAppId'] == null ? null : (map['springCloudAppId']! as String).input(),
      sslEnabled: map['sslEnabled'] == null ? null : (map['sslEnabled']! as bool).input(),
    );
  }
}

