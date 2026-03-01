// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redisenterprise_get_redis_enterprise_args_doc}
/// Arguments for getRedisEnterprise.
/// {@endtemplate}
/// {@macro pulumi_redisenterprise_get_redis_enterprise_args_doc}
class GetRedisEnterpriseArgs {
  /// The name of the Redis Enterprise cluster. Name must be 1-60 characters long. Allowed characters(A-Z, a-z, 0-9) and hyphen(-). There can be no leading nor trailing nor consecutive hyphens
  final pulumi.Input<String> clusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRedisEnterpriseArgs].
  /// [clusterName] The name of the Redis Enterprise cluster. Name must be 1-60 characters long. Allowed characters(A-Z, a-z, 0-9) and hyphen(-). There can be no leading nor trailing nor consecutive hyphens
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetRedisEnterpriseArgs({
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRedisEnterpriseArgs.fromMap(Map<String, dynamic> map) {
    return GetRedisEnterpriseArgs(
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

