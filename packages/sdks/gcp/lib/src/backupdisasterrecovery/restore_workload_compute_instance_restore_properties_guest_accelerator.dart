// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadComputeInstanceRestorePropertiesGuestAccelerator {
  /// Optional. The number of the guest accelerator cards exposed to this instance.
  final pulumi.Input<int>? acceleratorCount;

  /// Optional. Full or partial URL of the accelerator type resource.
  final pulumi.Input<String>? acceleratorType;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesGuestAccelerator].
  /// [acceleratorCount] Optional. The number of the guest accelerator cards exposed to this instance.
  /// [acceleratorType] Optional. Full or partial URL of the accelerator type resource.
  RestoreWorkloadComputeInstanceRestorePropertiesGuestAccelerator({
    this.acceleratorCount,
    this.acceleratorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': ?acceleratorCount,
      'acceleratorType': ?acceleratorType,
    };
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesGuestAccelerator.fromMap(
    Map<String, dynamic> map,
  ) {
    return RestoreWorkloadComputeInstanceRestorePropertiesGuestAccelerator(
      acceleratorCount: (() {
        final guardedValue = map['acceleratorCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      acceleratorType: (() {
        final guardedValue = map['acceleratorType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
