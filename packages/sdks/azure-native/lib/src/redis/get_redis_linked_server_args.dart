// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_get_redis_linked_server_args_doc}
/// Arguments for getRedisLinkedServer.
/// {@endtemplate}
/// {@macro pulumi_redis_get_redis_linked_server_args_doc}
class GetRedisLinkedServerArgs {
  /// The name of the linked server.
  final pulumi.Input<String> linkedServerName;
  /// The name of the redis cache.
  final pulumi.Input<String> name;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRedisLinkedServerArgs].
  /// [linkedServerName] The name of the linked server.
  /// [name] The name of the redis cache.
  /// [resourceGroupName] The name of the resource group.
  const GetRedisLinkedServerArgs({
    required this.linkedServerName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServerName': linkedServerName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRedisLinkedServerArgs.fromMap(Map<String, dynamic> map) {
    return GetRedisLinkedServerArgs(
      linkedServerName: pulumi.Input.fromValue(map['linkedServerName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
