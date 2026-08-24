// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_device_deployment_groups_version_config.dart';

/// Input properties used for looking up and filtering ZeroTrustDeviceDeploymentGroups resources.
class ZeroTrustDeviceDeploymentGroupsState {
  final pulumi.Input<String?>? accountId;
  /// The RFC3339Nano timestamp when the deployment group was created.
  final pulumi.Input<String?>? createdAt;
  /// A user-friendly name for the deployment group.
  final pulumi.Input<String?>? name;
  /// Contains an optional list of policy IDs assigned to a group.
  final pulumi.Input<List<String>?>? policyIds;
  /// The RFC3339Nano timestamp when the deployment group was last updated.
  final pulumi.Input<String?>? updatedAt;
  /// Contains at least one version configuration.
  final pulumi.Input<List<ZeroTrustDeviceDeploymentGroupsVersionConfig>?>? versionConfigs;

  /// Creates a new [ZeroTrustDeviceDeploymentGroupsState].
  /// [accountId] Optional.
  /// [createdAt] The RFC3339Nano timestamp when the deployment group was created.
  /// [name] A user-friendly name for the deployment group.
  /// [policyIds] Contains an optional list of policy IDs assigned to a group.
  /// [updatedAt] The RFC3339Nano timestamp when the deployment group was last updated.
  /// [versionConfigs] Contains at least one version configuration.
  const ZeroTrustDeviceDeploymentGroupsState({
    this.accountId,
    this.createdAt,
    this.name,
    this.policyIds,
    this.updatedAt,
    this.versionConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'name': ?name,
      'policyIds': ?policyIds,
      'updatedAt': ?updatedAt,
      'versionConfigs': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDeviceDeploymentGroupsVersionConfig>, List<Map<String, dynamic>>>(versionConfigs, (value) => pulumi.Input.encodeList<ZeroTrustDeviceDeploymentGroupsVersionConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ZeroTrustDeviceDeploymentGroupsState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDeviceDeploymentGroupsState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyIds: (() { final guardedValue = map['policyIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionConfigs: (() { final guardedValue = map['versionConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDeviceDeploymentGroupsVersionConfig>(guardedValue, (value) => ZeroTrustDeviceDeploymentGroupsVersionConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
