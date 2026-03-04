// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterAutoscalingAutoProvisioningDefaultsManagementUpgradeOption {
  /// This field is set when upgrades are about to commence with the approximate start time for the upgrades, in RFC3339 text format.
  final pulumi.Input<String>? autoUpgradeStartTime;

  /// Description of the cluster.
  final pulumi.Input<String>? description;

  /// Creates a new [ClusterClusterAutoscalingAutoProvisioningDefaultsManagementUpgradeOption].
  /// [autoUpgradeStartTime] This field is set when upgrades are about to commence with the approximate start time for the upgrades, in RFC3339 text format.
  /// [description] Description of the cluster.
  ClusterClusterAutoscalingAutoProvisioningDefaultsManagementUpgradeOption({
    this.autoUpgradeStartTime,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeStartTime': ?autoUpgradeStartTime,
      'description': ?description,
    };
  }

  factory ClusterClusterAutoscalingAutoProvisioningDefaultsManagementUpgradeOption.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterClusterAutoscalingAutoProvisioningDefaultsManagementUpgradeOption(
      autoUpgradeStartTime: (() {
        final guardedValue = map['autoUpgradeStartTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
