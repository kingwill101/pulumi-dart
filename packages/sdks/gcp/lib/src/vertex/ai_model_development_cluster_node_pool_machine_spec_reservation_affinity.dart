// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiModelDevelopmentClusterNodePoolMachineSpecReservationAffinity {
  /// Specifies the reservation affinity type.
  /// Possible values:
  /// NO_RESERVATION
  /// ANY_RESERVATION
  /// SPECIFIC_RESERVATION
  final pulumi.Input<String> reservationAffinityType;
  /// Corresponds to the label values of a reservation resource. This must be the
  /// resource name of the reservation, reservation block, or reservation sub-
  /// block.
  final pulumi.Input<List<String>?>? values;

  /// Creates a new [AiModelDevelopmentClusterNodePoolMachineSpecReservationAffinity].
  /// [reservationAffinityType] Specifies the reservation affinity type.
  /// [values] Corresponds to the label values of a reservation resource. This must be the
  const AiModelDevelopmentClusterNodePoolMachineSpecReservationAffinity({
    required this.reservationAffinityType,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reservationAffinityType': reservationAffinityType,
      'values': ?values,
    };
  }

  factory AiModelDevelopmentClusterNodePoolMachineSpecReservationAffinity.fromMap(Map<String, dynamic> map) {
    return AiModelDevelopmentClusterNodePoolMachineSpecReservationAffinity(
      reservationAffinityType: pulumi.Input.fromValue(map['reservationAffinityType'] as String),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
