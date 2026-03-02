// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineAdditionalCapabilities {
  /// Should Ultra SSD disk be enabled for this Virtual Machine? Changing this forces a new resource to be created.
  ///
  /// > **Note:** Azure Ultra Disk Storage is only available in a region that support availability zones and can only enabled on the following VM series: `ESv3`, `DSv3`, `FSv3`, `LSv2`, `M` and `Mv2`. For more information see the `Azure Ultra Disk Storage` [product documentation](https://docs.microsoft.com/azure/virtual-machines/windows/disks-enable-ultra-ssd).
  final pulumi.Input<bool> ultraSsdEnabled;

  /// Creates a new [VirtualMachineAdditionalCapabilities].
  /// [ultraSsdEnabled] Should Ultra SSD disk be enabled for this Virtual Machine? Changing this forces a new resource to be created.
  VirtualMachineAdditionalCapabilities({
    required this.ultraSsdEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ultraSsdEnabled': ultraSsdEnabled,
    };
  }

  factory VirtualMachineAdditionalCapabilities.fromMap(Map<String, dynamic> map) {
    return VirtualMachineAdditionalCapabilities(
      ultraSsdEnabled: (map['ultraSsdEnabled'] as bool).input(),
    );
  }
}

