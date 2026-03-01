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
    required pulumi.Output<String> accessPolicyName,
    required pulumi.Output<String> cacheName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accessPolicyName = pulumi.Input.asInput<String>(accessPolicyName),
      cacheName = pulumi.Input.asInput<String>(cacheName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyName': accessPolicyName,
      'cacheName': cacheName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyArgs(
      accessPolicyName: pulumi.Output.create<String>(map['accessPolicyName'] as String),
      cacheName: pulumi.Output.create<String>(map['cacheName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

