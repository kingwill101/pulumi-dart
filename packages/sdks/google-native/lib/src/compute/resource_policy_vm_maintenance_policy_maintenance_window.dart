// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_daily_cycle.dart';

/// A maintenance window for VMs. When set, we restrict our maintenance operations to this window.
class ResourcePolicyVmMaintenancePolicyMaintenanceWindow {
  final pulumi.Input<ResourcePolicyDailyCycle>? dailyMaintenanceWindow;

  /// Creates a new [ResourcePolicyVmMaintenancePolicyMaintenanceWindow].
  /// [dailyMaintenanceWindow] Optional.
  const ResourcePolicyVmMaintenancePolicyMaintenanceWindow({
    this.dailyMaintenanceWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyMaintenanceWindow': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyDailyCycle, Map<String, dynamic>>(dailyMaintenanceWindow, (value) => value.toMap()),
    };
  }

  factory ResourcePolicyVmMaintenancePolicyMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyVmMaintenancePolicyMaintenanceWindow(
      dailyMaintenanceWindow: (() { final guardedValue = map['dailyMaintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourcePolicyDailyCycle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

