// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecReservationAffinity {
  /// Corresponds to the label key of a reservation resource. To target a
  /// SPECIFIC_RESERVATION by name, use `compute.googleapis.com/reservation-name`
  /// as the key and specify the name of your reservation as its value.
  final pulumi.Input<String>? key;
  /// Specifies the reservation affinity type.
  /// Possible values:
  /// TYPE_UNSPECIFIED
  /// NO_RESERVATION
  /// ANY_RESERVATION
  /// SPECIFIC_RESERVATION
  final pulumi.Input<String> reservationAffinityType;
  /// Corresponds to the label values of a reservation resource. This must be the
  /// full resource name of the reservation or reservation block.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecReservationAffinity].
  /// [key] Corresponds to the label key of a reservation resource. To target a
  /// [reservationAffinityType] Specifies the reservation affinity type.
  /// [values] Corresponds to the label values of a reservation resource. This must be the
  AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecReservationAffinity({
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

  factory AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecReservationAffinity.fromMap(Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecReservationAffinity(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      reservationAffinityType: (map['reservationAffinityType'] as String).input(),
      values: map['values'] == null ? null : ((map['values']! as List).cast<String>()).input(),
    );
  }
}

