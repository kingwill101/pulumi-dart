// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigqueryreservation_v1_get_capacity_commitment_args_doc}
/// Arguments for getCapacityCommitment.
/// {@endtemplate}
/// {@macro pulumi_bigqueryreservation_v1_get_capacity_commitment_args_doc}
class GetCapacityCommitmentArgs {
  final pulumi.Input<String> capacityCommitmentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCapacityCommitmentArgs].
  /// [capacityCommitmentId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCapacityCommitmentArgs({
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

  factory GetCapacityCommitmentArgs.fromMap(Map<String, dynamic> map) {
    return GetCapacityCommitmentArgs(
      capacityCommitmentId: pulumi.Input.fromValue(
        map['capacityCommitmentId'] as String,
      ),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
