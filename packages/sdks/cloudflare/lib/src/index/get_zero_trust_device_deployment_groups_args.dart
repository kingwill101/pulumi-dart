// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_device_deployment_groups_get_zero_trust_device_deployment_groups_args_doc}
/// Arguments for getZeroTrustDeviceDeploymentGroups.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_device_deployment_groups_get_zero_trust_device_deployment_groups_args_doc}
class GetZeroTrustDeviceDeploymentGroupsArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> groupId;

  /// Creates a new [GetZeroTrustDeviceDeploymentGroupsArgs].
  /// [accountId] Required.
  /// [groupId] Required.
  const GetZeroTrustDeviceDeploymentGroupsArgs({
    required this.accountId,
    required this.groupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'groupId': groupId,
    };
  }

  factory GetZeroTrustDeviceDeploymentGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceDeploymentGroupsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
    );
  }
}
