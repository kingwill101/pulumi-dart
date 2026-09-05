// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_redis_cache_redis_cache_args_doc}
/// The set of arguments for RedisCache.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_redis_cache_redis_cache_args_doc}
class RedisCacheArgs {
  /// The resource ID of the API Management Service from which to create this external cache. Changing this forces a new API Management Redis Cache to be created.
  final pulumi.Input<String> apiManagementId;
  /// The location where to use cache from. Possible values are `default` and valid Azure regions. Defaults to `default`.
  final pulumi.Input<String?>? cacheLocation;
  /// The connection string to the Cache for Redis.
  final pulumi.Input<String> connectionString;
  /// The description of the API Management Redis Cache.
  final pulumi.Input<String?>? description;
  /// The name which should be used for this API Management Redis Cache. Changing this forces a new API Management Redis Cache to be created.
  final pulumi.Input<String?>? name;
  /// The resource ID of the Cache for Redis.
  final pulumi.Input<String?>? redisCacheId;

  /// Creates a new [RedisCacheArgs].
  /// [apiManagementId] The resource ID of the API Management Service from which to create this external cache. Changing this forces a new API Management Redis Cache to be created.
  /// [cacheLocation] The location where to use cache from. Possible values are `default` and valid Azure regions. Defaults to `default`.
  /// [connectionString] The connection string to the Cache for Redis.
  /// [description] The description of the API Management Redis Cache.
  /// [name] The name which should be used for this API Management Redis Cache. Changing this forces a new API Management Redis Cache to be created.
  /// [redisCacheId] The resource ID of the Cache for Redis.
  const RedisCacheArgs({
    required this.apiManagementId,
    this.cacheLocation,
    required this.connectionString,
    this.description,
    this.name,
    this.redisCacheId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': apiManagementId,
      'cacheLocation': ?cacheLocation,
      'connectionString': connectionString,
      'description': ?description,
      'name': ?name,
      'redisCacheId': ?redisCacheId,
    };
  }

  factory RedisCacheArgs.fromMap(Map<String, dynamic> map) {
    return RedisCacheArgs(
      apiManagementId: pulumi.Input.fromValue(map['apiManagementId'] as String),
      cacheLocation: (() { final guardedValue = map['cacheLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionString: pulumi.Input.fromValue(map['connectionString'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redisCacheId: (() { final guardedValue = map['redisCacheId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
