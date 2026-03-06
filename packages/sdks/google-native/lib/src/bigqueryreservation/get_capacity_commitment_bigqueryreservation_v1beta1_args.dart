// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigqueryreservation_v1beta1_get_capacity_commitment_bigqueryreservation_v1beta1_args_doc}
/// Arguments for getCapacityCommitment.
/// {@endtemplate}
/// {@macro pulumi_bigqueryreservation_v1beta1_get_capacity_commitment_bigqueryreservation_v1beta1_args_doc}
class GetCapacityCommitmentBigqueryreservationV1beta1Args {
  final pulumi.Input<String> capacityCommitmentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCapacityCommitmentBigqueryreservationV1beta1Args].
  /// [capacityCommitmentId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetCapacityCommitmentBigqueryreservationV1beta1Args({
    required this.capacityCommitmentId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityCommitmentId': capacityCommitmentId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCapacityCommitmentBigqueryreservationV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetCapacityCommitmentBigqueryreservationV1beta1Args(
      capacityCommitmentId: pulumi.Input.fromValue(map['capacityCommitmentId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

