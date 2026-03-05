// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_get_linked_server_args_doc}
/// Arguments for getLinkedServer.
/// {@endtemplate}
/// {@macro pulumi_redis_get_linked_server_args_doc}
class GetLinkedServerArgs {
  /// The name of the RedisLinkedServerWithProperties
  final pulumi.Input<String> linkedServerName;
  /// The name of the redis cache.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLinkedServerArgs].
  /// [linkedServerName] The name of the RedisLinkedServerWithProperties
  /// [name] The name of the redis cache.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetLinkedServerArgs({
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

  factory GetLinkedServerArgs.fromMap(Map<String, dynamic> map) {
    return GetLinkedServerArgs(
      linkedServerName: pulumi.Input.fromValue(map['linkedServerName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

