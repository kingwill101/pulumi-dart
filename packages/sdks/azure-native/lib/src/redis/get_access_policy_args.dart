// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_get_access_policy_args_doc}
/// Arguments for getAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_redis_get_access_policy_args_doc}
class GetAccessPolicyArgs {
  /// The name of the access policy that is being added to the Redis cache.
  final pulumi.Input<String> accessPolicyName;
  /// The name of the Redis cache.
  final pulumi.Input<String> cacheName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAccessPolicyArgs].
  /// [accessPolicyName] The name of the access policy that is being added to the Redis cache.
  /// [cacheName] The name of the Redis cache.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAccessPolicyArgs({
    required this.accessPolicyName,
    required this.cacheName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyName': accessPolicyName,
      'cacheName': cacheName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyArgs(
      accessPolicyName: (map['accessPolicyName'] as String).input(),
      cacheName: (map['cacheName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

