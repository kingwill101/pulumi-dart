// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_region_commitment_compute_v1_args_doc}
/// Arguments for getRegionCommitment.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_region_commitment_compute_v1_args_doc}
class GetRegionCommitmentComputeV1Args {
  final pulumi.Input<String> commitment;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionCommitmentComputeV1Args].
  /// [commitment] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionCommitmentComputeV1Args({
    required pulumi.Output<String> commitment,
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
  }) :
      commitment = pulumi.Input.asInput<String>(commitment),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitment': commitment,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionCommitmentComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionCommitmentComputeV1Args(
      commitment: pulumi.Output.create<String>(map['commitment'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

