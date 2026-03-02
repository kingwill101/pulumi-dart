// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_role.dart';

/// {@template pulumi_redis_linked_server_args_doc}
/// The set of arguments for LinkedServer.
/// {@endtemplate}
/// {@macro pulumi_redis_linked_server_args_doc}
class LinkedServerArgs {
  /// Fully qualified resourceId of the linked redis cache.
  final pulumi.Input<String> linkedRedisCacheId;
  /// Location of the linked redis cache.
  final pulumi.Input<String> linkedRedisCacheLocation;
  /// The name of the RedisLinkedServerWithProperties
  final pulumi.Input<String>? linkedServerName;
  /// The name of the redis cache.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Role of the linked server.
  final pulumi.Input<ReplicationRole> serverRole;

  /// Creates a new [LinkedServerArgs].
  /// [linkedRedisCacheId] Fully qualified resourceId of the linked redis cache.
  /// [linkedRedisCacheLocation] Location of the linked redis cache.
  /// [linkedServerName] The name of the RedisLinkedServerWithProperties
  /// [name] The name of the redis cache.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverRole] Role of the linked server.
  LinkedServerArgs({
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
      'serverRole': pulumi.Input.mapInputValue<ReplicationRole, String>(serverRole, (value) => value.value),
    };
  }

  factory LinkedServerArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServerArgs(
      linkedRedisCacheId: (map['linkedRedisCacheId'] as String).input(),
      linkedRedisCacheLocation: (map['linkedRedisCacheLocation'] as String).input(),
      linkedServerName: map['linkedServerName'] == null ? null : (map['linkedServerName'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serverRole: (ReplicationRole.fromValue(map['serverRole'] as String)).input(),
    );
  }
}

