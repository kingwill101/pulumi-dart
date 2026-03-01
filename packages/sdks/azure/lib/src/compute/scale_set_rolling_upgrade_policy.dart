// ignore_for_file: unused_element, unnecessary_cast


class ScaleSetRollingUpgradePolicy {
  /// The maximum percent of total virtual machine instances that will be upgraded simultaneously by the rolling upgrade in one batch. As this is a maximum, unhealthy instances in previous or future batches can cause the percentage of instances in a batch to decrease to ensure higher reliability. Defaults to `20`.
  final int? maxBatchInstancePercent;
  /// The maximum percentage of the total virtual machine instances in the scale set that can be simultaneously unhealthy, either as a result of being upgraded, or by being found in an unhealthy state by the virtual machine health checks before the rolling upgrade aborts. This constraint will be checked prior to starting any batch. Defaults to `20`.
  final int? maxUnhealthyInstancePercent;
  /// The maximum percentage of upgraded virtual machine instances that can be found to be in an unhealthy state. This check will happen after each batch is upgraded. If this percentage is ever exceeded, the rolling update aborts. Defaults to `20`.
  final int? maxUnhealthyUpgradedInstancePercent;
  /// The wait time between completing the update for all virtual machines in one batch and starting the next batch. The time duration should be specified in ISO 8601 format for duration (<https://en.wikipedia.org/wiki/ISO_8601#Durations>). Defaults to `PT0S` seconds represented as `PT0S`.
  final String? pauseTimeBetweenBatches;

  /// Creates a new [ScaleSetRollingUpgradePolicy].
  /// [maxBatchInstancePercent] The maximum percent of total virtual machine instances that will be upgraded simultaneously by the rolling upgrade in one batch. As this is a maximum, unhealthy instances in previous or future batches can cause the percentage of instances in a batch to decrease to ensure higher reliability. Defaults to `20`.
  /// [maxUnhealthyInstancePercent] The maximum percentage of the total virtual machine instances in the scale set that can be simultaneously unhealthy, either as a result of being upgraded, or by being found in an unhealthy state by the virtual machine health checks before the rolling upgrade aborts. This constraint will be checked prior to starting any batch. Defaults to `20`.
  /// [maxUnhealthyUpgradedInstancePercent] The maximum percentage of upgraded virtual machine instances that can be found to be in an unhealthy state. This check will happen after each batch is upgraded. If this percentage is ever exceeded, the rolling update aborts. Defaults to `20`.
  /// [pauseTimeBetweenBatches] The wait time between completing the update for all virtual machines in one batch and starting the next batch. The time duration should be specified in ISO 8601 format for duration (<https://en.wikipedia.org/wiki/ISO_8601#Durations>). Defaults to `PT0S` seconds represented as `PT0S`.
  ScaleSetRollingUpgradePolicy({
    this.maxBatchInstancePercent,
    this.maxUnhealthyInstancePercent,
    this.maxUnhealthyUpgradedInstancePercent,
    this.pauseTimeBetweenBatches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxBatchInstancePercent': ?maxBatchInstancePercent,
      'maxUnhealthyInstancePercent': ?maxUnhealthyInstancePercent,
      'maxUnhealthyUpgradedInstancePercent': ?maxUnhealthyUpgradedInstancePercent,
      'pauseTimeBetweenBatches': ?pauseTimeBetweenBatches,
    };
  }

  factory ScaleSetRollingUpgradePolicy.fromMap(Map<String, dynamic> map) {
    return ScaleSetRollingUpgradePolicy(
      maxBatchInstancePercent: map['maxBatchInstancePercent'] == null ? null : map['maxBatchInstancePercent'] as int,
      maxUnhealthyInstancePercent: map['maxUnhealthyInstancePercent'] == null ? null : map['maxUnhealthyInstancePercent'] as int,
      maxUnhealthyUpgradedInstancePercent: map['maxUnhealthyUpgradedInstancePercent'] == null ? null : map['maxUnhealthyUpgradedInstancePercent'] as int,
      pauseTimeBetweenBatches: map['pauseTimeBetweenBatches'] == null ? null : map['pauseTimeBetweenBatches'] as String,
    );
  }
}

