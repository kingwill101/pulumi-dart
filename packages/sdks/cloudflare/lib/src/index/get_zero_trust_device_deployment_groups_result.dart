// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_device_deployment_groups_version_config.dart';

/// Result data returned by getZeroTrustDeviceDeploymentGroups.
class GetZeroTrustDeviceDeploymentGroupsResult {
  final String? accountId;
  /// The RFC3339Nano timestamp when the deployment group was created.
  final String? createdAt;
  final String? groupId;
  /// The ID of this resource.
  final String? id;
  /// A user-friendly name for the deployment group.
  final String? name;
  /// Contains a list of policy IDs assigned to this deployment group.
  final List<String>? policyIds;
  /// The RFC3339Nano timestamp when the deployment group was last updated.
  final String? updatedAt;
  /// Contains version configurations for different target environments.
  final List<GetZeroTrustDeviceDeploymentGroupsVersionConfig>? versionConfigs;

  /// Creates a new [GetZeroTrustDeviceDeploymentGroupsResult].
  /// [accountId] Optional.
  /// [createdAt] The RFC3339Nano timestamp when the deployment group was created.
  /// [groupId] Optional.
  /// [id] The ID of this resource.
  /// [name] A user-friendly name for the deployment group.
  /// [policyIds] Contains a list of policy IDs assigned to this deployment group.
  /// [updatedAt] The RFC3339Nano timestamp when the deployment group was last updated.
  /// [versionConfigs] Contains version configurations for different target environments.
  const GetZeroTrustDeviceDeploymentGroupsResult({
    this.accountId,
    this.createdAt,
    this.groupId,
    this.id,
    this.name,
    this.policyIds,
    this.updatedAt,
    this.versionConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'groupId': ?groupId,
      'id': ?id,
      'name': ?name,
      'policyIds': ?policyIds,
      'updatedAt': ?updatedAt,
      'versionConfigs': ?(() { final guardedValue = versionConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDeviceDeploymentGroupsVersionConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetZeroTrustDeviceDeploymentGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceDeploymentGroupsResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyIds: (() { final guardedValue = map['policyIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionConfigs: (() { final guardedValue = map['versionConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDeviceDeploymentGroupsVersionConfig>(guardedValue, (value) => GetZeroTrustDeviceDeploymentGroupsVersionConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
