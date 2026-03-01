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
    pulumi.Output<String>? location,
    pulumi.Output<String>? maintenanceConfigurationId,
    pulumi.Output<String>? virtualMachineId,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceConfigurationId = pulumi.Input.asOptionalInput<String>(maintenanceConfigurationId),
      virtualMachineId = pulumi.Input.asOptionalInput<String>(virtualMachineId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'maintenanceConfigurationId': ?maintenanceConfigurationId,
      'virtualMachineId': ?virtualMachineId,
    };
  }

  factory AssignmentVirtualMachineState.fromMap(Map<String, dynamic> map) {
    return AssignmentVirtualMachineState(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maintenanceConfigurationId: map['maintenanceConfigurationId'] == null ? null : pulumi.Output.create<String>(map['maintenanceConfigurationId'] as String),
      virtualMachineId: map['virtualMachineId'] == null ? null : pulumi.Output.create<String>(map['virtualMachineId'] as String),
    );
  }
}

