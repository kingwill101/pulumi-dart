// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterClusterAutoscalingAutoProvisioningDefaultManagementUpgradeOption {
  /// This field is set when upgrades are about to commence with the approximate start time for the upgrades, in RFC3339 text format.
  final pulumi.Input<String> autoUpgradeStartTime;
  /// This field is set when upgrades are about to commence with the description of the upgrade.
  final pulumi.Input<String> description;

  /// Creates a new [GetClusterClusterAutoscalingAutoProvisioningDefaultManagementUpgradeOption].
  /// [autoUpgradeStartTime] This field is set when upgrades are about to commence with the approximate start time for the upgrades, in RFC3339 text format.
  /// [description] This field is set when upgrades are about to commence with the description of the upgrade.
  GetClusterClusterAutoscalingAutoProvisioningDefaultManagementUpgradeOption({
    required this.autoUpgradeStartTime,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeStartTime': autoUpgradeStartTime,
      'description': description,
    };
  }

  factory GetClusterClusterAutoscalingAutoProvisioningDefaultManagementUpgradeOption.fromMap(Map<String, dynamic> map) {
    return GetClusterClusterAutoscalingAutoProvisioningDefaultManagementUpgradeOption(
      autoUpgradeStartTime: pulumi.Input.fromValue(map['autoUpgradeStartTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
    );
  }
}

