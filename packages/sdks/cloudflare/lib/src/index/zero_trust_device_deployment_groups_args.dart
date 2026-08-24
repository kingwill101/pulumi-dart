// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_device_deployment_groups_version_config.dart';

/// {@template pulumi_index_zero_trust_device_deployment_groups_zero_trust_device_deployment_groups_args_doc}
/// The set of arguments for ZeroTrustDeviceDeploymentGroups.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_device_deployment_groups_zero_trust_device_deployment_groups_args_doc}
class ZeroTrustDeviceDeploymentGroupsArgs {
  final pulumi.Input<String> accountId;
  /// A user-friendly name for the deployment group.
  final pulumi.Input<String> name;
  /// Contains an optional list of policy IDs assigned to a group.
  final pulumi.Input<List<String>?>? policyIds;
  /// Contains at least one version configuration.
  final pulumi.Input<List<ZeroTrustDeviceDeploymentGroupsVersionConfig>> versionConfigs;

  /// Creates a new [ZeroTrustDeviceDeploymentGroupsArgs].
  /// [accountId] Required.
  /// [name] A user-friendly name for the deployment group.
  /// [policyIds] Contains an optional list of policy IDs assigned to a group.
  /// [versionConfigs] Contains at least one version configuration.
  const ZeroTrustDeviceDeploymentGroupsArgs({
    required this.accountId,
    required this.name,
    this.policyIds,
    required this.versionConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'name': name,
      'policyIds': ?policyIds,
      'versionConfigs': pulumi.Input.mapInputValue<List<ZeroTrustDeviceDeploymentGroupsVersionConfig>, List<Map<String, dynamic>>>(versionConfigs, (value) => pulumi.Input.encodeList<ZeroTrustDeviceDeploymentGroupsVersionConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ZeroTrustDeviceDeploymentGroupsArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDeviceDeploymentGroupsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      policyIds: (() { final guardedValue = map['policyIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      versionConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDeviceDeploymentGroupsVersionConfig>(map['versionConfigs']!, (value) => ZeroTrustDeviceDeploymentGroupsVersionConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
