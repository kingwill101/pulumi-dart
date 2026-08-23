// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_maintenance_assignment_virtual_machine_scale_set_assignment_virtual_machine_scale_set_args_doc}
/// The set of arguments for AssignmentVirtualMachineScaleSet.
/// {@endtemplate}
/// {@macro pulumi_maintenance_assignment_virtual_machine_scale_set_assignment_virtual_machine_scale_set_args_doc}
class AssignmentVirtualMachineScaleSetArgs {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created.
  final pulumi.Input<String> maintenanceConfigurationId;
  /// Specifies the Virtual Machine Scale Set ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualMachineScaleSetId;

  /// Creates a new [AssignmentVirtualMachineScaleSetArgs].
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [maintenanceConfigurationId] Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created.
  /// [virtualMachineScaleSetId] Specifies the Virtual Machine Scale Set ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created.
  const AssignmentVirtualMachineScaleSetArgs({
    this.location,
    required this.maintenanceConfigurationId,
    required this.virtualMachineScaleSetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'maintenanceConfigurationId': maintenanceConfigurationId,
      'virtualMachineScaleSetId': virtualMachineScaleSetId,
    };
  }

  factory AssignmentVirtualMachineScaleSetArgs.fromMap(Map<String, dynamic> map) {
    return AssignmentVirtualMachineScaleSetArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceConfigurationId: pulumi.Input.fromValue(map['maintenanceConfigurationId'] as String),
      virtualMachineScaleSetId: pulumi.Input.fromValue(map['virtualMachineScaleSetId'] as String),
    );
  }
}
