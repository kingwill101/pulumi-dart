// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_role.dart';

/// {@template pulumi_redis_redis_linked_server_args_doc}
/// The set of arguments for RedisLinkedServer.
/// {@endtemplate}
/// {@macro pulumi_redis_redis_linked_server_args_doc}
class RedisLinkedServerArgs {
  /// Fully qualified resourceId of the linked redis cache.
  final pulumi.Input<String> linkedRedisCacheId;
  /// Location of the linked redis cache.
  final pulumi.Input<String> linkedRedisCacheLocation;
  /// The name of the linked server that is being added to the Redis cache.
  final pulumi.Input<String?>? linkedServerName;
  /// The name of the Redis cache.
  final pulumi.Input<String> name;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Role of the linked server.
  final pulumi.Input<ReplicationRole> serverRole;

  /// Creates a new [RedisLinkedServerArgs].
  /// [linkedRedisCacheId] Fully qualified resourceId of the linked redis cache.
  /// [linkedRedisCacheLocation] Location of the linked redis cache.
  /// [linkedServerName] The name of the linked server that is being added to the Redis cache.
  /// [name] The name of the Redis cache.
  /// [resourceGroupName] The name of the resource group.
  /// [serverRole] Role of the linked server.
  const RedisLinkedServerArgs({
    required this.linkedRedisCacheId,
    required this.linkedRedisCacheLocation,
    this.linkedServerName,
    required this.name,
    required this.resourceGroupName,
    required this.serverRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedRedisCacheId': linkedRedisCacheId,
      'linkedRedisCacheLocation': linkedRedisCacheLocation,
      'linkedServerName': ?linkedServerName,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'serverRole': pulumi.Input.mapInputValue<ReplicationRole, String>(serverRole, (value) => value.wireValue),
    };
  }

  factory RedisLinkedServerArgs.fromMap(Map<String, dynamic> map) {
    return RedisLinkedServerArgs(
      linkedRedisCacheId: pulumi.Input.fromValue(map['linkedRedisCacheId'] as String),
      linkedRedisCacheLocation: pulumi.Input.fromValue(map['linkedRedisCacheLocation'] as String),
      linkedServerName: (() { final guardedValue = map['linkedServerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverRole: pulumi.Input.fromValue(ReplicationRole.fromValue(map['serverRole']! as String)),
    );
  }
}
