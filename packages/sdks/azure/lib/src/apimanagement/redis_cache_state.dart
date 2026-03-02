// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RedisCache resources.
class RedisCacheState {
  /// The resource ID of the API Management Service from which to create this external cache. Changing this forces a new API Management Redis Cache to be created.
  final pulumi.Input<String>? apiManagementId;
  /// The location where to use cache from. Possible values are `default` and valid Azure regions. Defaults to `default`.
  final pulumi.Input<String>? cacheLocation;
  /// The connection string to the Cache for Redis.
  final pulumi.Input<String>? connectionString;
  /// The description of the API Management Redis Cache.
  final pulumi.Input<String>? description;
  /// The name which should be used for this API Management Redis Cache. Changing this forces a new API Management Redis Cache to be created.
  final pulumi.Input<String>? name;
  /// The resource ID of the Cache for Redis.
  final pulumi.Input<String>? redisCacheId;

  /// Creates a new [RedisCacheState].
  /// [apiManagementId] The resource ID of the API Management Service from which to create this external cache. Changing this forces a new API Management Redis Cache to be created.
  /// [cacheLocation] The location where to use cache from. Possible values are `default` and valid Azure regions. Defaults to `default`.
  /// [connectionString] The connection string to the Cache for Redis.
  /// [description] The description of the API Management Redis Cache.
  /// [name] The name which should be used for this API Management Redis Cache. Changing this forces a new API Management Redis Cache to be created.
  /// [redisCacheId] The resource ID of the Cache for Redis.
  RedisCacheState({
    this.apiManagementId,
    this.cacheLocation,
    this.connectionString,
    this.description,
    this.name,
    this.redisCacheId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': ?apiManagementId,
      'cacheLocation': ?cacheLocation,
      'connectionString': ?connectionString,
      'description': ?description,
      'name': ?name,
      'redisCacheId': ?redisCacheId,
    };
  }

  factory RedisCacheState.fromMap(Map<String, dynamic> map) {
    return RedisCacheState(
      apiManagementId: map['apiManagementId'] == null ? null : (map['apiManagementId'] as String).input(),
      cacheLocation: map['cacheLocation'] == null ? null : (map['cacheLocation'] as String).input(),
      connectionString: map['connectionString'] == null ? null : (map['connectionString'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      redisCacheId: map['redisCacheId'] == null ? null : (map['redisCacheId'] as String).input(),
    );
  }
}

