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
    required this.commitment,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitment': commitment,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionCommitmentComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionCommitmentComputeV1Args(
      commitment: (map['commitment'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: (map['region'] as String).input(),
    );
  }
}

