// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrchestratedVirtualMachineScaleSetAdditionalCapabilities {
  /// Should the capacity to enable Data Disks of the `UltraSSD_LRS` storage account type be supported on this Virtual Machine Scale Set? Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? ultraSsdEnabled;

  /// Creates a new [OrchestratedVirtualMachineScaleSetAdditionalCapabilities].
  /// [ultraSsdEnabled] Should the capacity to enable Data Disks of the `UltraSSD_LRS` storage account type be supported on this Virtual Machine Scale Set? Defaults to `false`. Changing this forces a new resource to be created.
  const OrchestratedVirtualMachineScaleSetAdditionalCapabilities({
    this.ultraSsdEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ultraSsdEnabled': ?ultraSsdEnabled,
    };
  }

  factory OrchestratedVirtualMachineScaleSetAdditionalCapabilities.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetAdditionalCapabilities(
      ultraSsdEnabled: (() { final guardedValue = map['ultraSsdEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

