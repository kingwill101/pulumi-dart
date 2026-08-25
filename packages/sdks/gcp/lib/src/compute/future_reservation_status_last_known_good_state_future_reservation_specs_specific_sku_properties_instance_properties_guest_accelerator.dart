// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuPropertiesInstancePropertiesGuestAccelerator {
  /// The number of the guest accelerator cards exposed to this instance.
  final pulumi.Input<int?>? acceleratorCount;
  /// Full or partial URL of the accelerator type resource to attach to this instance.
  final pulumi.Input<String?>? acceleratorType;

  /// Creates a new [FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuPropertiesInstancePropertiesGuestAccelerator].
  /// [acceleratorCount] The number of the guest accelerator cards exposed to this instance.
  /// [acceleratorType] Full or partial URL of the accelerator type resource to attach to this instance.
  const FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuPropertiesInstancePropertiesGuestAccelerator({
    this.acceleratorCount,
    this.acceleratorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': ?acceleratorCount,
      'acceleratorType': ?acceleratorType,
    };
  }

  factory FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuPropertiesInstancePropertiesGuestAccelerator.fromMap(Map<String, dynamic> map) {
    return FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuPropertiesInstancePropertiesGuestAccelerator(
      acceleratorCount: (() { final guardedValue = map['acceleratorCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      acceleratorType: (() { final guardedValue = map['acceleratorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
