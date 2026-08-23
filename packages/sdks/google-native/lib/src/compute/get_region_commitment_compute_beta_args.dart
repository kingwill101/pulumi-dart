// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_region_commitment_compute_beta_args_doc}
/// Arguments for getRegionCommitment.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_region_commitment_compute_beta_args_doc}
class GetRegionCommitmentComputeBetaArgs {
  final pulumi.Input<String> commitment;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionCommitmentComputeBetaArgs].
  /// [commitment] Required.
  /// [project] Optional.
  /// [region] Required.
  const GetRegionCommitmentComputeBetaArgs({
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

  factory GetRegionCommitmentComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionCommitmentComputeBetaArgs(
      commitment: pulumi.Input.fromValue(map['commitment'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
