// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_list_redis_keys_args_doc}
/// Arguments for listRedisKeys.
/// {@endtemplate}
/// {@macro pulumi_redis_list_redis_keys_args_doc}
class ListRedisKeysArgs {
  /// The name of the RedisResource
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListRedisKeysArgs].
  /// [name] The name of the RedisResource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListRedisKeysArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListRedisKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListRedisKeysArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

