// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_spring_cloud_app_redis_association_spring_cloud_app_redis_association_args_doc}
/// The set of arguments for SpringCloudAppRedisAssociation.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_app_redis_association_spring_cloud_app_redis_association_args_doc}
class SpringCloudAppRedisAssociationArgs {
  /// Specifies the name of the Spring Cloud Application Association. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the Redis Cache access key.
  final pulumi.Input<String> redisAccessKey;
  /// Specifies the Redis Cache resource ID. Changing this forces a new resource to be created.
  final pulumi.Input<String> redisCacheId;
  /// Specifies the Spring Cloud Application resource ID in which the Association is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> springCloudAppId;
  /// Should SSL be used when connecting to Redis? Defaults to `true`.
  final pulumi.Input<bool>? sslEnabled;

  /// Creates a new [SpringCloudAppRedisAssociationArgs].
  /// [name] Specifies the name of the Spring Cloud Application Association. Changing this forces a new resource to be created.
  /// [redisAccessKey] Specifies the Redis Cache access key.
  /// [redisCacheId] Specifies the Redis Cache resource ID. Changing this forces a new resource to be created.
  /// [springCloudAppId] Specifies the Spring Cloud Application resource ID in which the Association is created. Changing this forces a new resource to be created.
  /// [sslEnabled] Should SSL be used when connecting to Redis? Defaults to `true`.
  SpringCloudAppRedisAssociationArgs({
    pulumi.Output<String>? name,
    required pulumi.Output<String> redisAccessKey,
    required pulumi.Output<String> redisCacheId,
    required pulumi.Output<String> springCloudAppId,
    pulumi.Output<bool>? sslEnabled,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      redisAccessKey = pulumi.Input.asInput<String>(redisAccessKey),
      redisCacheId = pulumi.Input.asInput<String>(redisCacheId),
      springCloudAppId = pulumi.Input.asInput<String>(springCloudAppId),
      sslEnabled = pulumi.Input.asOptionalInput<bool>(sslEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'redisAccessKey': redisAccessKey,
      'redisCacheId': redisCacheId,
      'springCloudAppId': springCloudAppId,
      'sslEnabled': ?sslEnabled,
    };
  }

  factory SpringCloudAppRedisAssociationArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudAppRedisAssociationArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      redisAccessKey: pulumi.Output.create<String>(map['redisAccessKey'] as String),
      redisCacheId: pulumi.Output.create<String>(map['redisCacheId'] as String),
      springCloudAppId: pulumi.Output.create<String>(map['springCloudAppId'] as String),
      sslEnabled: map['sslEnabled'] == null ? null : pulumi.Output.create<bool>(map['sslEnabled'] as bool),
    );
  }
}

