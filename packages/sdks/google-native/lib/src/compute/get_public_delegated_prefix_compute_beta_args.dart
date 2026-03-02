// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_public_delegated_prefix_compute_beta_args_doc}
/// Arguments for getPublicDelegatedPrefix.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_public_delegated_prefix_compute_beta_args_doc}
class GetPublicDelegatedPrefixComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> publicDelegatedPrefix;
  final pulumi.Input<String> region;

  /// Creates a new [GetPublicDelegatedPrefixComputeBetaArgs].
  /// [project] Optional.
  /// [publicDelegatedPrefix] Required.
  /// [region] Required.
  GetPublicDelegatedPrefixComputeBetaArgs({
    this.project,
    required this.publicDelegatedPrefix,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'publicDelegatedPrefix': publicDelegatedPrefix,
      'region': region,
    };
  }

  factory GetPublicDelegatedPrefixComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetPublicDelegatedPrefixComputeBetaArgs(
      project: map['project'] == null ? null : (map['project']! as String).input(),
      publicDelegatedPrefix: (map['publicDelegatedPrefix'] as String).input(),
      region: (map['region'] as String).input(),
    );
  }
}

