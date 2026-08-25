// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMachineTypesMachineTypeAccelerator {
  /// Number of accelerator cards exposed to the guest.
  final pulumi.Input<int> guestAcceleratorCount;
  /// The accelerator type resource name, not a full URL, e.g. `nvidia-tesla-t4`.
  final pulumi.Input<String> guestAcceleratorType;

  /// Creates a new [GetMachineTypesMachineTypeAccelerator].
  /// [guestAcceleratorCount] Number of accelerator cards exposed to the guest.
  /// [guestAcceleratorType] The accelerator type resource name, not a full URL, e.g. `nvidia-tesla-t4`.
  const GetMachineTypesMachineTypeAccelerator({
    required this.guestAcceleratorCount,
    required this.guestAcceleratorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guestAcceleratorCount': guestAcceleratorCount,
      'guestAcceleratorType': guestAcceleratorType,
    };
  }

  factory GetMachineTypesMachineTypeAccelerator.fromMap(Map<String, dynamic> map) {
    return GetMachineTypesMachineTypeAccelerator(
      guestAcceleratorCount: pulumi.Input.fromValue((map['guestAcceleratorCount'] as num).toInt()),
      guestAcceleratorType: pulumi.Input.fromValue(map['guestAcceleratorType'] as String),
    );
  }
}
