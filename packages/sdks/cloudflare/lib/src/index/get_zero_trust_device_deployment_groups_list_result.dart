// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_device_deployment_groups_list_result_version_config.dart';

class GetZeroTrustDeviceDeploymentGroupsListResult {
  /// The RFC3339Nano timestamp when the deployment group was created.
  final pulumi.Input<String> createdAt;
  /// The ID of the deployment group.
  final pulumi.Input<String> id;
  /// A user-friendly name for the deployment group.
  final pulumi.Input<String> name;
  /// Contains a list of policy IDs assigned to this deployment group.
  final pulumi.Input<List<String>> policyIds;
  /// The RFC3339Nano timestamp when the deployment group was last updated.
  final pulumi.Input<String> updatedAt;
  /// Contains version configurations for different target environments.
  final pulumi.Input<List<GetZeroTrustDeviceDeploymentGroupsListResultVersionConfig>> versionConfigs;

  /// Creates a new [GetZeroTrustDeviceDeploymentGroupsListResult].
  /// [createdAt] The RFC3339Nano timestamp when the deployment group was created.
  /// [id] The ID of the deployment group.
  /// [name] A user-friendly name for the deployment group.
  /// [policyIds] Contains a list of policy IDs assigned to this deployment group.
  /// [updatedAt] The RFC3339Nano timestamp when the deployment group was last updated.
  /// [versionConfigs] Contains version configurations for different target environments.
  const GetZeroTrustDeviceDeploymentGroupsListResult({
    required this.createdAt,
    required this.id,
    required this.name,
    required this.policyIds,
    required this.updatedAt,
    required this.versionConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'id': id,
      'name': name,
      'policyIds': policyIds,
      'updatedAt': updatedAt,
      'versionConfigs': pulumi.Input.mapInputValue<List<GetZeroTrustDeviceDeploymentGroupsListResultVersionConfig>, List<Map<String, dynamic>>>(versionConfigs, (value) => pulumi.Input.encodeList<GetZeroTrustDeviceDeploymentGroupsListResultVersionConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetZeroTrustDeviceDeploymentGroupsListResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceDeploymentGroupsListResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      policyIds: pulumi.Input.fromValue((map['policyIds'] as List).cast<String>()),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      versionConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustDeviceDeploymentGroupsListResultVersionConfig>(map['versionConfigs']!, (value) => GetZeroTrustDeviceDeploymentGroupsListResultVersionConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
