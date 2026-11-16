// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiCustomJobJobSpecWorkerPoolSpecMachineSpecReservationAffinity {
  /// Corresponds to the label key of a reservation resource.
  final pulumi.Input<String?>? key;
  /// Specifies the reservation affinity type. Possible values: "NO_RESERVATION", "ANY_RESERVATION", and "SPECIFIC_RESERVATION"
  final pulumi.Input<String> reservationAffinityType;
  /// Corresponds to the label values of a reservation resource.
  final pulumi.Input<List<String>?>? values;

  /// Creates a new [AiCustomJobJobSpecWorkerPoolSpecMachineSpecReservationAffinity].
  /// [key] Corresponds to the label key of a reservation resource.
  /// [reservationAffinityType] Specifies the reservation affinity type. Possible values: "NO_RESERVATION", "ANY_RESERVATION", and "SPECIFIC_RESERVATION"
  /// [values] Corresponds to the label values of a reservation resource.
  const AiCustomJobJobSpecWorkerPoolSpecMachineSpecReservationAffinity({
    this.key,
    required this.reservationAffinityType,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'reservationAffinityType': reservationAffinityType,
      'values': ?values,
    };
  }

  factory AiCustomJobJobSpecWorkerPoolSpecMachineSpecReservationAffinity.fromMap(Map<String, dynamic> map) {
    return AiCustomJobJobSpecWorkerPoolSpecMachineSpecReservationAffinity(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservationAffinityType: pulumi.Input.fromValue(map['reservationAffinityType'] as String),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
