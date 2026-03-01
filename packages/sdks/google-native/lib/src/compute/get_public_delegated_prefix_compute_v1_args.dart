// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_public_delegated_prefix_compute_v1_args_doc}
/// Arguments for getPublicDelegatedPrefix.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_public_delegated_prefix_compute_v1_args_doc}
class GetPublicDelegatedPrefixComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> publicDelegatedPrefix;
  final pulumi.Input<String> region;

  /// Creates a new [GetPublicDelegatedPrefixComputeV1Args].
  /// [project] Optional.
  /// [publicDelegatedPrefix] Required.
  /// [region] Required.
  GetPublicDelegatedPrefixComputeV1Args({
    pulumi.Output<String>? project,
    required pulumi.Output<String> publicDelegatedPrefix,
    required pulumi.Output<String> region,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      publicDelegatedPrefix = pulumi.Input.asInput<String>(publicDelegatedPrefix),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'publicDelegatedPrefix': publicDelegatedPrefix,
      'region': region,
    };
  }

  factory GetPublicDelegatedPrefixComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetPublicDelegatedPrefixComputeV1Args(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      publicDelegatedPrefix: pulumi.Output.create<String>(map['publicDelegatedPrefix'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

