// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_maintenance_policy_maintenance_window.dart';

class InstanceMaintenancePolicy {
  /// The maintenance window of the instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceMaintenancePolicyMaintenanceWindow?>? maintenanceWindow;

  /// Creates a new [InstanceMaintenancePolicy].
  /// [maintenanceWindow] The maintenance window of the instance.
  const InstanceMaintenancePolicy({
    this.maintenanceWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<InstanceMaintenancePolicyMaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
    };
  }

  factory InstanceMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return InstanceMaintenancePolicy(
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceMaintenancePolicyMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
