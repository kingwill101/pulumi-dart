// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AssignmentVirtualMachine resources.
class AssignmentVirtualMachineState {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? maintenanceConfigurationId;
  /// Specifies the Virtual Machine ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualMachineId;

  /// Creates a new [AssignmentVirtualMachineState].
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [maintenanceConfigurationId] Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created.
  /// [virtualMachineId] Specifies the Virtual Machine ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created.
  AssignmentVirtualMachineState({
    this.location,
    this.maintenanceConfigurationId,
    this.virtualMachineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'maintenanceConfigurationId': ?maintenanceConfigurationId,
      'virtualMachineId': ?virtualMachineId,
    };
  }

  factory AssignmentVirtualMachineState.fromMap(Map<String, dynamic> map) {
    return AssignmentVirtualMachineState(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      maintenanceConfigurationId: map['maintenanceConfigurationId'] == null ? null : (map['maintenanceConfigurationId'] as String).input(),
      virtualMachineId: map['virtualMachineId'] == null ? null : (map['virtualMachineId'] as String).input(),
    );
  }
}

