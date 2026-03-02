// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FutureReservationSpecificSkuPropertiesInstancePropertiesGuestAccelerator {
  /// The number of the guest accelerator cards exposed to this instance.
  final pulumi.Input<int>? acceleratorCount;
  /// Full or partial URL of the accelerator type resource to attach to this instance.
  final pulumi.Input<String>? acceleratorType;

  /// Creates a new [FutureReservationSpecificSkuPropertiesInstancePropertiesGuestAccelerator].
  /// [acceleratorCount] The number of the guest accelerator cards exposed to this instance.
  /// [acceleratorType] Full or partial URL of the accelerator type resource to attach to this instance.
  FutureReservationSpecificSkuPropertiesInstancePropertiesGuestAccelerator({
    this.acceleratorCount,
    this.acceleratorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': ?acceleratorCount,
      'acceleratorType': ?acceleratorType,
    };
  }

  factory FutureReservationSpecificSkuPropertiesInstancePropertiesGuestAccelerator.fromMap(Map<String, dynamic> map) {
    return FutureReservationSpecificSkuPropertiesInstancePropertiesGuestAccelerator(
      acceleratorCount: map['acceleratorCount'] == null ? null : (map['acceleratorCount']! as int).input(),
      acceleratorType: map['acceleratorType'] == null ? null : (map['acceleratorType']! as String).input(),
    );
  }
}

