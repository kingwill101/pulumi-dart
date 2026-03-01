// ignore_for_file: unused_element, unnecessary_cast


class WindowsVirtualMachineScaleSetAutomaticInstanceRepair {
  /// The repair action that will be used for repairing unhealthy virtual machines in the scale set. Possible values include `Replace`, `Restart`, `Reimage`.
  ///
  /// > **Note:** Once the `action` field has been set it will always return the last value it was assigned if it is removed from the configuration file.
  ///
  /// > **Note:** If you wish to update the repair `action` of an existing `automatic_instance_repair` policy, you must first `disable` the `automatic_instance_repair` policy before you can re-enable the `automatic_instance_repair` policy with the new repair `action` defined.
  final String? action;
  /// Should the automatic instance repair be enabled on this Virtual Machine Scale Set?
  final bool enabled;
  /// Amount of time for which automatic repairs will be delayed. The grace period starts right after the VM is found unhealthy. Possible values are between `10` and `90` minutes. The time duration should be specified in `ISO 8601` format (e.g. `PT10M` to `PT90M`).
  ///
  /// > **Note:** Once the `grace_period` field has been set it will always return the last value it was assigned if it is removed from the configuration file.
  final String? gracePeriod;

  /// Creates a new [WindowsVirtualMachineScaleSetAutomaticInstanceRepair].
  /// [action] The repair action that will be used for repairing unhealthy virtual machines in the scale set. Possible values include `Replace`, `Restart`, `Reimage`.
  /// [enabled] Should the automatic instance repair be enabled on this Virtual Machine Scale Set?
  /// [gracePeriod] Amount of time for which automatic repairs will be delayed. The grace period starts right after the VM is found unhealthy. Possible values are between `10` and `90` minutes. The time duration should be specified in `ISO 8601` format (e.g. `PT10M` to `PT90M`).
  WindowsVirtualMachineScaleSetAutomaticInstanceRepair({
    this.action,
    required this.enabled,
    this.gracePeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'enabled': enabled,
      'gracePeriod': ?gracePeriod,
    };
  }

  factory WindowsVirtualMachineScaleSetAutomaticInstanceRepair.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineScaleSetAutomaticInstanceRepair(
      action: map['action'] == null ? null : map['action'] as String,
      enabled: map['enabled'] as bool,
      gracePeriod: map['gracePeriod'] == null ? null : map['gracePeriod'] as String,
    );
  }
}

