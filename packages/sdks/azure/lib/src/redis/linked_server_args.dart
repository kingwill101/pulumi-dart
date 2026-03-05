// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_linked_server_linked_server_args_doc}
/// The set of arguments for LinkedServer.
/// {@endtemplate}
/// {@macro pulumi_redis_linked_server_linked_server_args_doc}
class LinkedServerArgs {
  /// The ID of the linked Redis cache. Changing this forces a new Redis to be created.
  final pulumi.Input<String> linkedRedisCacheId;
  /// The location of the linked Redis cache. Changing this forces a new Redis to be created.
  final pulumi.Input<String> linkedRedisCacheLocation;
  /// The name of the Resource Group where the Redis caches exists. Changing this forces a new Redis to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The role of the linked Redis cache (eg "Secondary"). Changing this forces a new Redis to be created. Possible values are `Primary` and `Secondary`.
  final pulumi.Input<String> serverRole;
  /// The name of Redis cache to link with. Changing this forces a new Redis to be created. (eg The primary role)
  final pulumi.Input<String> targetRedisCacheName;

  /// Creates a new [LinkedServerArgs].
  /// [linkedRedisCacheId] The ID of the linked Redis cache. Changing this forces a new Redis to be created.
  /// [linkedRedisCacheLocation] The location of the linked Redis cache. Changing this forces a new Redis to be created.
  /// [resourceGroupName] The name of the Resource Group where the Redis caches exists. Changing this forces a new Redis to be created.
  /// [serverRole] The role of the linked Redis cache (eg "Secondary"). Changing this forces a new Redis to be created. Possible values are `Primary` and `Secondary`.
  /// [targetRedisCacheName] The name of Redis cache to link with. Changing this forces a new Redis to be created. (eg The primary role)
  LinkedServerArgs({
    required this.linkedRedisCacheId,
    required this.linkedRedisCacheLocation,
    required this.resourceGroupName,
    required this.serverRole,
    required this.targetRedisCacheName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedRedisCacheId': linkedRedisCacheId,
      'linkedRedisCacheLocation': linkedRedisCacheLocation,
      'resourceGroupName': resourceGroupName,
      'serverRole': serverRole,
      'targetRedisCacheName': targetRedisCacheName,
    };
  }

  factory LinkedServerArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServerArgs(
      linkedRedisCacheId: pulumi.Input.fromValue(map['linkedRedisCacheId'] as String),
      linkedRedisCacheLocation: pulumi.Input.fromValue(map['linkedRedisCacheLocation'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverRole: pulumi.Input.fromValue(map['serverRole'] as String),
      targetRedisCacheName: pulumi.Input.fromValue(map['targetRedisCacheName'] as String),
    );
  }
}

