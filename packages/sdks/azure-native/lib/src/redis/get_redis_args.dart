// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_get_redis_args_doc}
/// Arguments for getRedis.
/// {@endtemplate}
/// {@macro pulumi_redis_get_redis_args_doc}
class GetRedisArgs {
  /// The name of the RedisResource
  final pulumi.Input<String> name;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRedisArgs].
  /// [name] The name of the RedisResource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetRedisArgs({required this.name, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRedisArgs.fromMap(Map<String, dynamic> map) {
    return GetRedisArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
