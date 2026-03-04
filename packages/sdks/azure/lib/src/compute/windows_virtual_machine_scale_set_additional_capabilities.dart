// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsVirtualMachineScaleSetAdditionalCapabilities {
  /// Should the capacity to enable Data Disks of the `UltraSSD_LRS` storage account type be supported on this Virtual Machine Scale Set? Possible values are `true` or `false`. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? ultraSsdEnabled;

  /// Creates a new [WindowsVirtualMachineScaleSetAdditionalCapabilities].
  /// [ultraSsdEnabled] Should the capacity to enable Data Disks of the `UltraSSD_LRS` storage account type be supported on this Virtual Machine Scale Set? Possible values are `true` or `false`. Defaults to `false`. Changing this forces a new resource to be created.
  WindowsVirtualMachineScaleSetAdditionalCapabilities({this.ultraSsdEnabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ultraSsdEnabled': ?ultraSsdEnabled};
  }

  factory WindowsVirtualMachineScaleSetAdditionalCapabilities.fromMap(
    Map<String, dynamic> map,
  ) {
    return WindowsVirtualMachineScaleSetAdditionalCapabilities(
      ultraSsdEnabled: (() {
        final guardedValue = map['ultraSsdEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
