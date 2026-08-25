// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpecReservationAffinity {
  /// Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, use `compute.googleapis.com/reservation-name` as the key and specify the name of your reservation as its value.
  final pulumi.Input<String?>? key;
  /// Specifies the reservation affinity type. Possible values: NO_RESERVATION ANY_RESERVATION SPECIFIC_RESERVATION SPECIFIC_THEN_ANY_RESERVATION SPECIFIC_THEN_NO_RESERVATION
  final pulumi.Input<String> reservationAffinityType;
  /// When set to true, resources will be drawn from go/cloud-ai-gcp-pool.
  final pulumi.Input<bool?>? useReservationPool;
  /// Corresponds to the label values of a reservation resource. This must be the full resource name of the reservation or reservation block.
  final pulumi.Input<List<String>?>? values;

  /// Creates a new [AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpecReservationAffinity].
  /// [key] Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, use `compute.googleapis.com/reservation-name` as the key and specify the name of your reservation as its value.
  /// [reservationAffinityType] Specifies the reservation affinity type. Possible values: NO_RESERVATION ANY_RESERVATION SPECIFIC_RESERVATION SPECIFIC_THEN_ANY_RESERVATION SPECIFIC_THEN_NO_RESERVATION
  /// [useReservationPool] When set to true, resources will be drawn from go/cloud-ai-gcp-pool.
  /// [values] Corresponds to the label values of a reservation resource. This must be the full resource name of the reservation or reservation block.
  const AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpecReservationAffinity({
    this.key,
    required this.reservationAffinityType,
    this.useReservationPool,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'reservationAffinityType': reservationAffinityType,
      'useReservationPool': ?useReservationPool,
      'values': ?values,
    };
  }

  factory AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpecReservationAffinity.fromMap(Map<String, dynamic> map) {
    return AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpecReservationAffinity(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservationAffinityType: pulumi.Input.fromValue(map['reservationAffinityType'] as String),
      useReservationPool: (() { final guardedValue = map['useReservationPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
