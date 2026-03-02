// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsVirtualMachineScaleSetRollingUpgradePolicy {
  /// Should the Virtual Machine Scale Set ignore the Azure Zone boundaries when constructing upgrade batches? Possible values are `true` or `false`.
  final pulumi.Input<bool>? crossZoneUpgradesEnabled;
  /// The maximum percent of total virtual machine instances that will be upgraded simultaneously by the rolling upgrade in one batch. As this is a maximum, unhealthy instances in previous or future batches can cause the percentage of instances in a batch to decrease to ensure higher reliability.
  final pulumi.Input<int> maxBatchInstancePercent;
  /// The maximum percentage of the total virtual machine instances in the scale set that can be simultaneously unhealthy, either as a result of being upgraded, or by being found in an unhealthy state by the virtual machine health checks before the rolling upgrade aborts. This constraint will be checked prior to starting any batch.
  final pulumi.Input<int> maxUnhealthyInstancePercent;
  /// The maximum percentage of upgraded virtual machine instances that can be found to be in an unhealthy state. This check will happen after each batch is upgraded. If this percentage is ever exceeded, the rolling update aborts.
  final pulumi.Input<int> maxUnhealthyUpgradedInstancePercent;
  /// Create new virtual machines to upgrade the scale set, rather than updating the existing virtual machines. Existing virtual machines will be deleted once the new virtual machines are created for each batch. Possible values are `true` or `false`.
  ///
  /// > **Note:** `overprovision` must be set to `false` when `maximum_surge_instances_enabled` is specified.
  final pulumi.Input<bool>? maximumSurgeInstancesEnabled;
  /// The wait time between completing the update for all virtual machines in one batch and starting the next batch. The time duration should be specified in ISO 8601 format.
  final pulumi.Input<String> pauseTimeBetweenBatches;
  /// Upgrade all unhealthy instances in a scale set before any healthy instances. Possible values are `true` or `false`.
  final pulumi.Input<bool>? prioritizeUnhealthyInstancesEnabled;

  /// Creates a new [WindowsVirtualMachineScaleSetRollingUpgradePolicy].
  /// [crossZoneUpgradesEnabled] Should the Virtual Machine Scale Set ignore the Azure Zone boundaries when constructing upgrade batches? Possible values are `true` or `false`.
  /// [maxBatchInstancePercent] The maximum percent of total virtual machine instances that will be upgraded simultaneously by the rolling upgrade in one batch. As this is a maximum, unhealthy instances in previous or future batches can cause the percentage of instances in a batch to decrease to ensure higher reliability.
  /// [maxUnhealthyInstancePercent] The maximum percentage of the total virtual machine instances in the scale set that can be simultaneously unhealthy, either as a result of being upgraded, or by being found in an unhealthy state by the virtual machine health checks before the rolling upgrade aborts. This constraint will be checked prior to starting any batch.
  /// [maxUnhealthyUpgradedInstancePercent] The maximum percentage of upgraded virtual machine instances that can be found to be in an unhealthy state. This check will happen after each batch is upgraded. If this percentage is ever exceeded, the rolling update aborts.
  /// [maximumSurgeInstancesEnabled] Create new virtual machines to upgrade the scale set, rather than updating the existing virtual machines. Existing virtual machines will be deleted once the new virtual machines are created for each batch. Possible values are `true` or `false`.
  /// [pauseTimeBetweenBatches] The wait time between completing the update for all virtual machines in one batch and starting the next batch. The time duration should be specified in ISO 8601 format.
  /// [prioritizeUnhealthyInstancesEnabled] Upgrade all unhealthy instances in a scale set before any healthy instances. Possible values are `true` or `false`.
  WindowsVirtualMachineScaleSetRollingUpgradePolicy({
    this.crossZoneUpgradesEnabled,
    required this.maxBatchInstancePercent,
    required this.maxUnhealthyInstancePercent,
    required this.maxUnhealthyUpgradedInstancePercent,
    this.maximumSurgeInstancesEnabled,
    required this.pauseTimeBetweenBatches,
    this.prioritizeUnhealthyInstancesEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossZoneUpgradesEnabled': ?crossZoneUpgradesEnabled,
      'maxBatchInstancePercent': maxBatchInstancePercent,
      'maxUnhealthyInstancePercent': maxUnhealthyInstancePercent,
      'maxUnhealthyUpgradedInstancePercent': maxUnhealthyUpgradedInstancePercent,
      'maximumSurgeInstancesEnabled': ?maximumSurgeInstancesEnabled,
      'pauseTimeBetweenBatches': pauseTimeBetweenBatches,
      'prioritizeUnhealthyInstancesEnabled': ?prioritizeUnhealthyInstancesEnabled,
    };
  }

  factory WindowsVirtualMachineScaleSetRollingUpgradePolicy.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineScaleSetRollingUpgradePolicy(
      crossZoneUpgradesEnabled: map['crossZoneUpgradesEnabled'] == null ? null : (map['crossZoneUpgradesEnabled']! as bool).input(),
      maxBatchInstancePercent: (map['maxBatchInstancePercent'] as int).input(),
      maxUnhealthyInstancePercent: (map['maxUnhealthyInstancePercent'] as int).input(),
      maxUnhealthyUpgradedInstancePercent: (map['maxUnhealthyUpgradedInstancePercent'] as int).input(),
      maximumSurgeInstancesEnabled: map['maximumSurgeInstancesEnabled'] == null ? null : (map['maximumSurgeInstancesEnabled']! as bool).input(),
      pauseTimeBetweenBatches: (map['pauseTimeBetweenBatches'] as String).input(),
      prioritizeUnhealthyInstancesEnabled: map['prioritizeUnhealthyInstancesEnabled'] == null ? null : (map['prioritizeUnhealthyInstancesEnabled']! as bool).input(),
    );
  }
}

