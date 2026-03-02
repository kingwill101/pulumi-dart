// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineAutoPatching {
  /// The day of week to apply the patch on. Possible values are `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`.
  final pulumi.Input<String> dayOfWeek;
  /// The size of the Maintenance Window in minutes.
  final pulumi.Input<int> maintenanceWindowDurationInMinutes;
  /// The Hour, in the Virtual Machine Time-Zone when the patching maintenance window should begin.
  final pulumi.Input<int> maintenanceWindowStartingHour;

  /// Creates a new [VirtualMachineAutoPatching].
  /// [dayOfWeek] The day of week to apply the patch on. Possible values are `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`.
  /// [maintenanceWindowDurationInMinutes] The size of the Maintenance Window in minutes.
  /// [maintenanceWindowStartingHour] The Hour, in the Virtual Machine Time-Zone when the patching maintenance window should begin.
  VirtualMachineAutoPatching({
    required this.dayOfWeek,
    required this.maintenanceWindowDurationInMinutes,
    required this.maintenanceWindowStartingHour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'maintenanceWindowDurationInMinutes': maintenanceWindowDurationInMinutes,
      'maintenanceWindowStartingHour': maintenanceWindowStartingHour,
    };
  }

  factory VirtualMachineAutoPatching.fromMap(Map<String, dynamic> map) {
    return VirtualMachineAutoPatching(
      dayOfWeek: (map['dayOfWeek'] as String).input(),
      maintenanceWindowDurationInMinutes: (map['maintenanceWindowDurationInMinutes'] as int).input(),
      maintenanceWindowStartingHour: (map['maintenanceWindowStartingHour'] as int).input(),
    );
  }
}

