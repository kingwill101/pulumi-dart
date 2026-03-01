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
  GetCapacityCommitmentBigqueryreservationV1beta1Args({
    required pulumi.Output<String> capacityCommitmentId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      capacityCommitmentId = pulumi.Input.asInput<String>(capacityCommitmentId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityCommitmentId': capacityCommitmentId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCapacityCommitmentBigqueryreservationV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetCapacityCommitmentBigqueryreservationV1beta1Args(
      capacityCommitmentId: pulumi.Output.create<String>(map['capacityCommitmentId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

