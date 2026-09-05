// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AssignmentVirtualMachineScaleSet resources.
class AssignmentVirtualMachineScaleSetState {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? maintenanceConfigurationId;
  /// Specifies the Virtual Machine Scale Set ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? virtualMachineScaleSetId;

  /// Creates a new [AssignmentVirtualMachineScaleSetState].
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [maintenanceConfigurationId] Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created.
  /// [virtualMachineScaleSetId] Specifies the Virtual Machine Scale Set ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created.
  const AssignmentVirtualMachineScaleSetState({
    this.location,
    this.maintenanceConfigurationId,
    this.virtualMachineScaleSetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'maintenanceConfigurationId': ?maintenanceConfigurationId,
      'virtualMachineScaleSetId': ?virtualMachineScaleSetId,
    };
  }

  factory AssignmentVirtualMachineScaleSetState.fromMap(Map<String, dynamic> map) {
    return AssignmentVirtualMachineScaleSetState(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceConfigurationId: (() { final guardedValue = map['maintenanceConfigurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualMachineScaleSetId: (() { final guardedValue = map['virtualMachineScaleSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
