// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReservationSpecificReservationInstancePropertyGuestAccelerator {
  /// The number of the guest accelerator cards exposed to
  /// this instance.
  final pulumi.Input<int> acceleratorCount;

  /// The full or partial URL of the accelerator type to
  /// attach to this instance. For example:
  /// 'projects/my-project/zones/us-central1-c/acceleratorTypes/nvidia-tesla-p100'
  ///
  /// If you are creating an instance template, specify only the accelerator name.
  final pulumi.Input<String> acceleratorType;

  /// Creates a new [GetReservationSpecificReservationInstancePropertyGuestAccelerator].
  /// [acceleratorCount] The number of the guest accelerator cards exposed to
  /// [acceleratorType] The full or partial URL of the accelerator type to
  GetReservationSpecificReservationInstancePropertyGuestAccelerator({
    required this.acceleratorCount,
    required this.acceleratorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': acceleratorCount,
      'acceleratorType': acceleratorType,
    };
  }

  factory GetReservationSpecificReservationInstancePropertyGuestAccelerator.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetReservationSpecificReservationInstancePropertyGuestAccelerator(
      acceleratorCount: pulumi.Input.fromValue(map['acceleratorCount'] as int),
      acceleratorType: pulumi.Input.fromValue(map['acceleratorType'] as String),
    );
  }
}
