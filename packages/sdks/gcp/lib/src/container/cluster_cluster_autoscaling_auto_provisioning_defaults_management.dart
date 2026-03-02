// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_autoscaling_auto_provisioning_defaults_management_upgrade_option.dart';

class ClusterClusterAutoscalingAutoProvisioningDefaultsManagement {
  /// Specifies whether the node auto-repair is enabled for the node pool. If enabled, the nodes in this node pool will be monitored and, if they fail health checks too many times, an automatic repair action will be triggered.
  ///
  /// This block also contains several computed attributes, documented below.
  final pulumi.Input<bool>? autoRepair;
  /// Specifies whether node auto-upgrade is enabled for the node pool. If enabled, node auto-upgrade helps keep the nodes in your node pool up to date with the latest release version of Kubernetes.
  final pulumi.Input<bool>? autoUpgrade;
  /// Specifies the Auto Upgrade knobs for the node pool.
  final pulumi.Input<List<ClusterClusterAutoscalingAutoProvisioningDefaultsManagementUpgradeOption>>? upgradeOptions;

  /// Creates a new [ClusterClusterAutoscalingAutoProvisioningDefaultsManagement].
  /// [autoRepair] Specifies whether the node auto-repair is enabled for the node pool. If enabled, the nodes in this node pool will be monitored and, if they fail health checks too many times, an automatic repair action will be triggered.
  /// [autoUpgrade] Specifies whether node auto-upgrade is enabled for the node pool. If enabled, node auto-upgrade helps keep the nodes in your node pool up to date with the latest release version of Kubernetes.
  /// [upgradeOptions] Specifies the Auto Upgrade knobs for the node pool.
  ClusterClusterAutoscalingAutoProvisioningDefaultsManagement({
    this.autoRepair,
    this.autoUpgrade,
    this.upgradeOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRepair': ?autoRepair,
      'autoUpgrade': ?autoUpgrade,
      'upgradeOptions': ?pulumi.Input.mapOptionalInputValue<List<ClusterClusterAutoscalingAutoProvisioningDefaultsManagementUpgradeOption>, List<Map<String, dynamic>>>(upgradeOptions, (value) => pulumi.Input.encodeList<ClusterClusterAutoscalingAutoProvisioningDefaultsManagementUpgradeOption, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterClusterAutoscalingAutoProvisioningDefaultsManagement.fromMap(Map<String, dynamic> map) {
    return ClusterClusterAutoscalingAutoProvisioningDefaultsManagement(
      autoRepair: map['autoRepair'] == null ? null : (map['autoRepair']! as bool).input(),
      autoUpgrade: map['autoUpgrade'] == null ? null : (map['autoUpgrade']! as bool).input(),
      upgradeOptions: map['upgradeOptions'] == null ? null : (pulumi.Input.decodeList<ClusterClusterAutoscalingAutoProvisioningDefaultsManagementUpgradeOption>(map['upgradeOptions']!, (value) => ClusterClusterAutoscalingAutoProvisioningDefaultsManagementUpgradeOption.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

