// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_access_policy_args_doc}
/// The set of arguments for AccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_redis_access_policy_args_doc}
class AccessPolicyArgs {
  /// The name of the access policy that is being added to the Redis cache.
  final pulumi.Input<String>? accessPolicyName;
  /// The name of the Redis cache.
  final pulumi.Input<String> cacheName;
  /// Permissions for the access policy. Learn how to configure permissions at https://aka.ms/redis/AADPreRequisites
  final pulumi.Input<String> permissions;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [AccessPolicyArgs].
  /// [accessPolicyName] The name of the access policy that is being added to the Redis cache.
  /// [cacheName] The name of the Redis cache.
  /// [permissions] Permissions for the access policy. Learn how to configure permissions at https://aka.ms/redis/AADPreRequisites
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  AccessPolicyArgs({
    this.accessPolicyName,
    required this.cacheName,
    required this.permissions,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyName': ?accessPolicyName,
      'cacheName': cacheName,
      'permissions': permissions,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory AccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AccessPolicyArgs(
      accessPolicyName: map['accessPolicyName'] == null ? null : (map['accessPolicyName'] as String).input(),
      cacheName: (map['cacheName'] as String).input(),
      permissions: (map['permissions'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

