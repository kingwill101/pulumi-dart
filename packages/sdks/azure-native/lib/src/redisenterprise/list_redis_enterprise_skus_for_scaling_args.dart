// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redisenterprise_list_redis_enterprise_skus_for_scaling_args_doc}
/// Arguments for listRedisEnterpriseSkusForScaling.
/// {@endtemplate}
/// {@macro pulumi_redisenterprise_list_redis_enterprise_skus_for_scaling_args_doc}
class ListRedisEnterpriseSkusForScalingArgs {
  /// The name of the Redis Enterprise cluster. Name must be 1-60 characters long. Allowed characters(A-Z, a-z, 0-9) and hyphen(-). There can be no leading nor trailing nor consecutive hyphens
  final pulumi.Input<String> clusterName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListRedisEnterpriseSkusForScalingArgs].
  /// [clusterName] The name of the Redis Enterprise cluster. Name must be 1-60 characters long. Allowed characters(A-Z, a-z, 0-9) and hyphen(-). There can be no leading nor trailing nor consecutive hyphens
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListRedisEnterpriseSkusForScalingArgs({
    required this.clusterName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListRedisEnterpriseSkusForScalingArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListRedisEnterpriseSkusForScalingArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
